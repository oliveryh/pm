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
	console.log(data.has_more)
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
			await FileUtils.createFile(path)
			await FileUtils.updateFrontmatter(path, {
				title,
				url,
				created_time,
				last_edited_time
			})
		}
	}
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Notion Pages" }, clickOverride: { click: clickHandler, params: [] }, });
```

![[Notion.base]]

# Resources

- [Notion Examples](https://www.notion.so/8c324a26348843d4800ba9b4afe68608?v=1208f3a058ed46b89ce948624225f490)
- [Red Gregory](https://www.redgregory.com/)
- [Para Dashboard | Notion Template](https://www.notion.so/templates/para-dashboard-notion-noob)
