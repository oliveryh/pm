
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
	const { viewer: { repositories }} = await graphqlWithAuth(`
		query { 
		  viewer { 
			repositories(first: 50) {
			  nodes {
			    owner {
			      login
			    }
				name
				createdAt
		        stargazerCount
		        issues(states:[OPEN]) {
			      totalCount
		        }
		        isArchived
		        isPrivate
		        url
			  }
			}
		  }
		}
	`);
	let createdFiles = new Set()
	const folder = dv.current().file.folder
	repositories.nodes.forEach((item) => {
	
		console.log(item.name)
	
		// Ignore PicloCodeChallenge owned repos
		if (item.owner.login == 'PicloCodeChallenge') return
		
		const repoName = item.name
		const path = `${folder}/${repoName}.md`
		createdFiles.add(path)
		this.app.vault.create(path, '')
			.then(() => console.log("Created", path))
			.catch(() => console.log("Couldn't create file"))
		FileUtils.updateFrontmatter(path, {
			owner: item.owner.login,
			name: item.name,
			url: item.url,
			createdAt: item.createdAt,
			stargazerCount: item.stargazerCount,
			issueCount: item.issues.totalCount,
			isArchived: item.isArchived,
			isPrivate: item.isPrivate,
			deleted: false,
			status: item.isArchived ? 'archived' : null
		})
	})
	const existingFiles = new Set(app.vault.getFiles().filter(file => file.parent.path == dv.current().file.folder).filter(file => file.path != dv.current().file.path).map(file => file.path))
	console.log(existingFiles, createdFiles)
	const filesToMarkInactive = existingFiles.difference(createdFiles)
	for (const path of filesToMarkInactive) {
		await FileUtils.updateFrontmatter(path, {
			deleted: true,
		})
	}
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Repos" }, clickOverride: { click: clickHandler, params: [] }, });
```


![[GitHub Repos.base]]

# Tasks

- [x] Add soft deletion
- [ ] Sync Repos button is broken
# Log

## 2025-12-19

- [x] Deleted unused repos and updated issues
## 2025-06-22

- [x] Update issue count to be open issues