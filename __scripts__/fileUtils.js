class FileUtils {

    /**
     * Creates a file at the specified path if it does not already exist.
     * 
     * @param {string} path - The path where the file should be created.
     * @returns {Promise<void>} - A promise that resolves when the file is created or if it already exists.
     */
    createFile = async (path, content='') => {
        console.log("Creating file at path:", path);
        try {
            await customJS.app.vault.create(path, content)
        } catch (error) {
            console.log("Assumed file already exists at path:", path);
        }
    }

    createFolder = async (path) => {
        console.log("Creating folder at path:", path);
        try {
            await customJS.app.vault.createFolder(path)
        } catch (error) {
            console.log("Assumed folder already exists at path:", path);
        }
    }
    
    updateFile = async (path, content) => {
        console.log("Updating content for file at path:", path);
        const loadedFile = app.vault.getAbstractFileByPath(path);
        await customJS.app.vault.modify(loadedFile, content);
    }

    /**
     * Updates the frontmatter of a file at the specified path.
     * 
     * @param {string} path - The path to the file whose frontmatter is to be updated.
     * @param {Object} frontmatterUpdates - An object containing the frontmatter keys and values to update.
     */
    updateFrontmatter = (path, frontmatterUpdates) => {
        console.log("Updating frontmatter for file at path:", path);
        const loadedFile = app.vault.getAbstractFileByPath(path);
        app.fileManager.processFrontMatter(
            loadedFile,
            (frontmatter) => {
                for (const [key, value] of Object.entries(frontmatterUpdates)) {
                    frontmatter[key] = value;
                }
            }
        );
    }
}
