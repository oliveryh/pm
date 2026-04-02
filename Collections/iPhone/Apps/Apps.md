```dataviewjs
const clickHandler = async () => {
	const { FileUtils } = await cJS();
	const appList = await dv.io.csv("Device Information.csv")
	const folder = dv.current().file.folder
	let createdFiles = new Set()
	for (const app of appList.values) {
		const appName = app['App Name']
		// Version name in brackets removed
		const appNameWithoutVersion = appName.replace(/\s*\(.*?\)/, '').trim()
		const path = `${folder}/${appNameWithoutVersion}.md`
		await FileUtils.createFile(path)
		createdFiles.add(path)
		await FileUtils.updateFrontmatter(path, {
			deleted: false,
		})
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
createButton({ app, el: this.container, args: { name: "🔄 Sync Apps" }, clickOverride: { click: clickHandler, params: [] }, });
```

![[Apps.base]]

# Reference

## Process to get app CSV

1. Install App Configurator
2. Plug in your iPhone
3. Go to Actions > Export > Info > Installed Apps and save to Apps/ directory
4. Run sync action above
