---
status: Completed
base: "[[Projects.base]]"
---

# Introduction

I've always enjoyed creating small utilities to help distil my online life into a single location. Often I'd want to scrape an API to see things in aggregate, or want a more minimalist interface to the data I have hosted all over the internet.

Recently, I invested some time into looking at Local-first applications as a means of hosting these small personal apps. This is what I found:

- Local-first apps deployed as a Vue app for example, still require some PWA configuration to work fully offline
- I was jumping at a production grade solution, and would likely have to learn a new ecosystem

I eventually decided that Obsidian might be a good alternative instead

- It runs fully offline
- It's useable on mobile
- I can focus on writing vanilla JS in most cases
- The plugin ecosystem is rich
- As I've demonstrated below, using the filesystem as a database is relatively performant and follows the "File over app" ethos
- There is a full revision history of what's changed
- I can make minor edits on mobile and see their effects in real time

# Technical Details

## Plugins

- Dataview
	- DataviewJS blocks are used to interact with filesystem in most cases
	- DQL is used to create summary tables
- CustomJS
	- Scripts stored in `__scripts__` can be imported by multiple dataview JS blocks
- Buttons
	- Used to add buttons. Although apparently not the preferred plugin, it works for my usecase
- Iconize
	- Icons can be added to collections so that referencing them give helpful context about what's being referenced

## File System as a Database

There are sync scripts that generally do the following

- Create a new Markdown file associated with an object from the external API
- Frontmatter is then either added or updated to reflect particular properties about that object
- In some cases, it may be appropriate to keep the file system in sync with items that are deleted. In other cases, you may want to associate notes or properties with the object stored in Obsidian without it being deleted

## Design Patterns

I've explored a few basic design patterns in [[2025 - DataviewJS]]

# Future Changes

There are some future changes that could be worked on

- [x] Add new collections
	- [x] Obsidian plugins
	- [x] GitHub branches
	- [x] iPhone apps
	- [x] Notion pages
	- [x] Twitter saved items
- Try out Datacore with [example vault](https://forum.obsidian.md/t/starter-vault-things-3-full-featured-datacore-task-management-system-zettelkasten-lookup-para-structure/87754)
- Extract useful functionality from [here](https://discord.com/channels/1219902517304098836/1248851796810530816/1385726838223147058)
- Try out beto's Datacore shared vault: https://www.youtube.com/@beto_group
- Update file mtime/ctime to align with git created/modified times
- Don't import outside a click handler. This will otherwise attempt to make network requests on page loads

# Resources

- https://github.com/robabby/thought-support
- https://forum.obsidian.md/t/using-metaedit-buttons-templater-nldates-and-dataview-together/35911/10
- https://github.com/mProjectsCode/obsidian-meta-bind-plugin/discussions/269#discussioncomment-8904352
- https://www.youtube.com/watch?v=gYK3VDQsZJo
- https://discord.com/channels/686053708261228577/1304548353232867348/1304548353232867348

# Notes

## 2025-06-04 - [Syntax FM Episode 739](https://podcasts.apple.com/gb/podcast/syntax-tasty-web-development-treats/id1253186678?i=1000648205910)

- Recommend Ink and Switch article
- CRDT for mortals
- Understand more about the primitives
	- Web Sockets
	- Service Workers
	- IndexedDB
- Example of local first application: [https://github.com/syntaxfm/local-first](https://github.com/syntaxfm/local-first)

## 2025-06-10 - [localfirst.fm Episode 24](https://podcasts.apple.com/gb/podcast/localfirst-fm/id1725721050?i=1000706512882)

- Ben Holmes created something called Simple Sync Engine as a learning resource
- He'd personally used Zero by Rocicorp as well

## 2025-06-12

- Today I've more or less decided that experimenting with Obsidian has the highest utility to time spend ratio
- The notes showcase in the Obsidian Discord has some good resources for inspiration https://discord.com/channels/686053708261228577/1304548353232867348/1304548353232867348

## Miscellaneous Resources

- https://gist.github.com/pesterhazy/3e039677f2e314cb77ffe3497ebca07b
- https://github.com/powersync-ja/powersync-js/blob/main/demos/vue-supabase-todolist/README.md
