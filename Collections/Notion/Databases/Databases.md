
```dataviewjs
const clickHandler = async () => {
	const { FileUtils } = await cJS();
	const secrets = await dv.page('secrets.md')
	const token = secrets.notion_api_key
	const {request} = self.require("obsidian");
	const folder = dv.current().file.folder
	const body = {
		"filter": {
	        "value": "database",
	        "property": "object"
	    },
	}
	const requestHeaders = {
		Authorization: `Bearer ${token}`, "Notion-Version": "2022-06-28", "Content-Type": "application/json",
	};

	const response = await request({
		url: `https://api.notion.com/v1/search`, method: "POST", headers: requestHeaders, body: JSON.stringify(body),
	});

	const data = JSON.parse(response);
	let createdFiles = new Set()
	for (const result of data.results) {
		const url = result.url
		const created_time = result.created_time
		const last_edited_time = result.last_edited_time
		const title = result.title
			.map((titleSegment) => titleSegment.plain_text)
			.join("")
		const name = title
			.replaceAll('/', '-')
			.replaceAll(':', '-')
		const path = `${folder}/${name}.md`
		if (title) {
			createdFiles.add(path)
			await FileUtils.createFile(path)
			await FileUtils.updateFrontmatter(path, {
				title,
				url,
				created_time,
				last_edited_time,
				deleted: false,
			})
		}
	}
	const existingFiles = new Set(app.vault.getFiles().filter(file => file.parent.path == dv.current().file.folder).filter(file => file.path != dv.current().file.path).map(file => file.path))
	const filesToMarkInactive = existingFiles.difference(createdFiles)
	for (const path of filesToMarkInactive) {
		await FileUtils.updateFrontmatter(path, {
			deleted: true,
		})
	}
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Notion Databases" }, clickOverride: { click: clickHandler, params: [] }, });
```

```dataviewjs
dv.table(
	["Title", "Created", "Last Edited", "Deleted"],
	dv.pages('"Collections/Notion/Databases"')
		.sort(t => t.last_edited_time, 'desc')
	    .where(t => t.file.name != "Databases")
	    .map(t => [
		    dv.el('a', t.file.name, { attr: { href: t.url }}),
		    new Date(t.created_time).toISOString().split('T')[0],
		    new Date(t.last_edited_time).toISOString().split('T')[0],
		    t.deleted ? ":RiDeleteBin5Line:" : "",
		])
    )
```

# Database Use cases

- [x] Remove unused
- [x] Make it clear if a database is an archive
- [x] Clean up actively used database and explain use-cases
- [x] Remove duplication across account stores

## Entertainment

Yamtrack looks like a possible self-hosted version to track TV/Film
