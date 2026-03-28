```dataviewjs
const clickHandler = async () => {
	const { FileUtils } = await cJS();
	const bookmarkString = await dv.io.load("bookmarks.json")
	const bookmarks = JSON.parse(bookmarkString)
	const folder = dv.current().file.folder
	let createdFiles = new Set()
	for (const bookmark of bookmarks) {
		console.log(bookmark)
		const authorHandle = bookmark['screen_name']
		const authorName = bookmark['name']
		const createdAt = bookmark['created_at']
		const id = bookmark['id']
		const userId = bookmark['user_id']
		
		const url = bookmark['url']
		await FileUtils.createFolder(`${folder}/${authorHandle}`)
		const path = `${folder}/${authorHandle}/${id}.md`
		await FileUtils.createFile(path)
		let content = bookmark['full_text']
		let lastMediaUrl
		for (const media of bookmark['media']) {
			const mediaThumbnailUrl = media['thumbnail']
			const mediaOriginalUrl = media['original']
			const mediaUrl = media['url']
			if (media['type'] == 'photo') {
				content += `\n![${mediaUrl}](${mediaOriginalUrl})`
			}
			if (media['type'] == 'video') {
				content += `\n<video src="${mediaOriginalUrl}" controls></video>`
			}
			if (media['type'] == 'animated_gif') {
				content += `\n<video src="${mediaOriginalUrl}" controls></video>`
			}
			lastMediaUrl = mediaThumbnailUrl
		}
		FileUtils.updateFile(path, content)
		FileUtils.updateFrontmatter(path, {
			authorHandle,
			authorName,
			createdAt,
			id,
			userId,
			url,
			mediaUrl: lastMediaUrl,
			hasMedia: !!lastMediaUrl,
			previewText: content.slice(0, 100) + '...'
		})

	}
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Bookmarks" }, clickOverride: { click: clickHandler, params: [] }, });
```


