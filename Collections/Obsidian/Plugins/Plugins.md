
```dataviewjs
const clickHandler = async () => {
	const { FileUtils } = await cJS();
	const folder = dv.current().file.folder
	const plugins = dv.array(Object.values(app.plugins.manifests))
	let createdFiles = new Set()
	for (const plugin of plugins) {
		const name = plugin.name
		const id = plugin.id
		const path = `${folder}/${name}.md`
		await FileUtils.createFile(path)
		createdFiles.add(path)
		await FileUtils.updateFrontmatter(path, {
			id: plugin.id,
			active: app.plugins.enabledPlugins.has(id),
			deleted: false,
		})
	}
	const existingFiles = new Set(app.vault.getFiles().filter(file => file.parent.path == dv.current().file.folder).filter(file => file.path != dv.current().file.path).map(file => file.path))
	const filesToMarkInactive = existingFiles.difference(createdFiles)
	for (const path of filesToMarkInactive) {
		await FileUtils.updateFrontmatter(path, {
			active: false,
			deleted: true,
		})
	}
}
const { createButton } = this.app.plugins.plugins["buttons"];
createButton({ app, el: this.container, args: { name: "🔄 Sync Plugins" }, clickOverride: { click: clickHandler, params: [] }, });
```

![[Plugins.base]]
