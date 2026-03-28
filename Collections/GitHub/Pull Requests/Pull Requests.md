
```dataviewjs
const clickHandler = async () => {
	const { graphql } = await self.require.import("https://esm.sh/@octokit/graphql");
	const { FileUtils } = await cJS();
	const secrets = await dv.page('secrets.md')
	const token = secrets.github_token
	const authorization = `token ${token}`;
	const graphqlWithAuth = graphql.defaults({
	  headers: {
		authorization,
	  },
	});
	const { search: { edges }} = await graphqlWithAuth(`
		{
		  search(query: "author:oliveryh is:pr is:open", type: ISSUE, first: 50) {
			edges {
			  node {
				... on PullRequest {
				  url
				  title
				  number
				  reviewDecision
				  isDraft
				  createdAt
				  repository {
					nameWithOwner
				  }
				}
			  }
			}
		  }
		}
	`);
	const folder = dv.current().file.folder
	// Create files
	let createdFiles = new Set()
	for (const edge of edges) {
		const issueTitle = edge.node.title
		if (!issueTitle) { return }
		const issueNumber = edge.node.number
		const issueURL = edge.node.url
		const displayAs = `${issueNumber} - ${issueTitle}`
			.replaceAll('/', '-')
			.replaceAll(':', '-')
		const path = `${folder}/${displayAs}.md`
		await FileUtils.createFile(path)
		createdFiles.add(path)
		await FileUtils.updateFrontmatter(path, {
			title: edge.node.title,
			url: edge.node.url,
			number: edge.node.number,
			reviewDecision: edge.node.reviewDecision || 'NONE',
			isDraft: edge.node.isDraft,
			createdAt: edge.node.createdAt,
			repoNameWithOwner: edge.node.repository.nameWithOwner,
		})
	}
	// Delete files
	const existingFiles = new Set(app.vault.getFiles().filter(file => file.parent.path == dv.current().file.folder).filter(file => file.path != dv.current().file.path).map(file => file.path))
	console.log("Existing Files", existingFiles)
	const filesToDelete = existingFiles.difference(createdFiles)
	console.log("Files to delete", filesToDelete)
	filesToDelete.forEach((path) => {
		const file = app.vault.getAbstractFileByPath(path);
		this.app.vault.delete(file)
			.then(() => console.log("Deleted", path))
			.catch(() => console.log("Couldn't delete", path))
	})
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Assigned PRs" }, clickOverride: { click: clickHandler, params: [] }, });
```

![[GitHub Pull Requests.base]]
- [ ] Add open pull requests as dynamic list
- [ ] Display approval status
- [ ] Display time since raised
- [ ] Replace characters not allowed for folders # / :
- [ ] Issues with the same name will write over each other

```dataviewjs
console.log(app.vault.getFiles().filter(file => file.parent.path == dv.current().file.folder).filter(file => file.path != dv.current().file.path))
```

```dataviewjs
const clickHandler = async () => {
	const { graphql } = await self.require.import("https://esm.sh/@octokit/graphql");
	const secrets = await dv.page('secrets.md')
	const token = secrets.github_token
	const authorization = `token ${token}`;
	const graphqlWithAuth = graphql.defaults({
	  headers: {
		authorization,
	  },
	});
	let nodes = [];
	let hasNextPage = true;
	let endCursor = null;
	let pageCount = 0;
	const maxPages = 5; // Set your desired page limit here

	while (hasNextPage && pageCount < maxPages) {
		const result = await graphqlWithAuth(`
			query ($after: String) {
				search(
					first: 100,
					after: $after,
					query: "repo:Piclo/flex updated:2025-01-01..2025-06-23 type:pr -reviewed-by:allanlewis",
					type: ISSUE
				) {
					pageInfo {
						hasNextPage
						endCursor
					}
					nodes {
						... on PullRequest {
							state
							resourcePath
							author {
								login
							}
							reviews(last: 1) {
								nodes {
									author {
										login
									}
								}
							}
						}
					}
				}
			}
		`, { after: endCursor });

		nodes = nodes.concat(result.search.nodes);
		hasNextPage = result.search.pageInfo.hasNextPage;
		endCursor = result.search.pageInfo.endCursor;
		pageCount++;
	}
	let counts = {}
	let countsAuthors = {}
	for (const node of nodes) {
		const reviewer = node.reviews.nodes[0]?.author.login;
		if (reviewer) {
			counts[reviewer] = (counts[reviewer] | 0) + 1;
		}
		const author = node.author.login;
		countsAuthors[author] = (countsAuthors[author] | 0) + 1;
	}
	console.log(counts);
	console.log(countsAuthors);
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Show PR Counts" }, clickOverride: { click: clickHandler, params: [] }, });
```






