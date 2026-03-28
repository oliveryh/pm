
```dataviewjs
const clickHandler = async () => {
	const { Octokit } = await self.require.import("https://esm.sh/@octokit/core");
	const { paginateGraphQL } = await self.require.import("https://esm.sh/@octokit/plugin-paginate-graphql");
	const { FileUtils } = await cJS();
	const secrets = await dv.page('secrets.md')
	const token = secrets.github_token
	const authorization = `token ${token}`
	const OctokitClient = Octokit.plugin(paginateGraphQL)
	const octokit = new OctokitClient({ auth: token })
	const graphqlWithAuth = octokit.graphql.paginate
	// const graphqlWithAuth = graphql.defaults({
	//   headers: {
	// 	authorization,
	//   },
	// });
	const { repository: { refs }} = await graphqlWithAuth(`
		query paginate($cursor: String) {
		  repository(owner:"oliveryh") {
		    refs(first:10, after: $cursor, refPrefix: "refs/heads/") {
		      pageInfo {
		        hasNextPage
		        endCursor
		      }
		      nodes {
		        name
		        target {
		          ... on Commit {
		            author {
		              user {
		                login
		              }
		            }
		          }
		        }
		      }
		    }
		  }
		}
	`);
	const branches = refs.nodes
	console.log(branches)
	const ownedBranches = branches.filter((ref) => ref.target.author.user?.login == 'oliveryh')
	console.log(ownedBranches)
	const folder = dv.current().file.folder
	let createdFiles = new Set()
	for (const branch of ownedBranches) {
		const branchTitle = branch.name.replace('/', '-')
		const url = `https://github.com/Piclo/flex/tree/${branch.name}`
		const path = `${folder}/${branchTitle}.md`
		await FileUtils.createFile(path)
		createdFiles.add(path)
		await FileUtils.updateFrontmatter(path, {
			title: branchTitle,
			url,
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
createButton({ app, el: this.container, args: { name: "🔄 Sync My Branches" }, clickOverride: { click: clickHandler, params: [] }, });
```

![[GitHub Branches.base]]

- [x] Add pagination to GitHub requests
- [ ] Warn of this being an expensive request
- [ ] Filter out `main` branch or branches without additional commits
- [ ] Extend to personal repos
- [ ] Link to personal repos as opposed to work repo