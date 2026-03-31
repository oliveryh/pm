```dataviewjs
const clickHandler = async () => {
	const { FileUtils } = await cJS();
	const secrets = await dv.page('secrets.md')
	const token = secrets.notion_api_key
	const {request} = self.require("obsidian");
	const folder = dv.current().file.folder
	const body = {
		"filter": {
	        "value": "page",
	        "property": "object"
	    },
	}
	const requestHeaders = {
		Authorization: `Bearer ${token}`, "Notion-Version": "2022-06-28", "Content-Type": "application/json",
	};

	let allResults = [];
	let hasMore = true;
	let startCursor = undefined;
	while (hasMore) {
		const bodyWithCursor = startCursor ? { ...body, start_cursor: startCursor } : body;
		const response = await request({
			url: `https://api.notion.com/v1/search`, method: "POST", headers: requestHeaders, body: JSON.stringify(bodyWithCursor),
		});
		const data = JSON.parse(response);
		allResults = allResults.concat(data.results);
		hasMore = data.has_more;
		startCursor = data.next_cursor;
	}

	let createdFiles = new Set()
	for (const result of allResults) {
		const url = result.url
		const created_time = result.created_time
		const last_edited_time = result.last_edited_time
		console.log(result)
		const title = (result.properties?.title?.title || [])
			.map((titleSegment) => titleSegment.plain_text)
			.join("")
		const name = title
			.replaceAll('/', '-')
			.replaceAll(':', '-')
		console.log("name", name)
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
createButton({ app, el: this.container, args: { name: "🔄 Sync Notion Pages" }, clickOverride: { click: clickHandler, params: [] }, });
```
