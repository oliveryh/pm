
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
		  search(query: "assignee:oliveryh is:issue", type: ISSUE, first: 20) {
			edges {
			  node {
				... on Issue {
				  url
				  title
				  number
				  state
				}
			  }
			}
		  }
		}
	`);
	const folder = dv.current().file.folder
	let createdFiles = new Set()
	for (const edge of edges) {
		const issueTitle = edge.node.title
		const issueNumber = edge.node.number
		const displayAs = `${issueNumber} - ${issueTitle}`
			.replaceAll('/', '-')
			.replaceAll(': ', ' - ')
		const path = `${folder}/${displayAs}.md`
		await FileUtils.createFile(path)
		createdFiles.add(path)
		await FileUtils.updateFrontmatter(path, {
			title: edge.node.title,
			number: edge.node.number,
			url: edge.node.url,
			state: edge.node.state,
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
createButton({ app, el: this.container, args: { name: "🔄 Sync Assigned Issues" }, clickOverride: { click: clickHandler, params: [] }, });
```

```dataviewjs
const {createButton} = app.plugins.plugins["buttons"]

const copyLinkToClipboard = (t) => {
	const htmlLink = `[#${t.number} - ${t.title}](${t.url})`
	return () => { navigator.clipboard.writeText(htmlLink) }
}

dv.table(
	["Title", "State", ""],
	dv.pages('"Collections/GitHub/Issues"')
	    .where(t => t.file.name != "Issues")
	    .map(t => [
		    `#${t.number} - ${t.title}`,
		    t.state === 'CLOSED' ? ":LiCheckCircle2:" : "",
		    createButton({
			    app,
			    el: this.container,
			    args: { name: "📋 Copy Link" },
			    clickOverride: { click: copyLinkToClipboard(t), params: [] }, })
		])
    )
```
- [x] Add button to copy to markdown
- [x] Click may be getting overridden as the last row
- [ ] Add org/repo reference in table
