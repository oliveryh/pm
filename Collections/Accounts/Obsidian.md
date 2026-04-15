
> [!process]
>
> Input::[[Collections/Accounts/YouTube|YouTube]]
>
> ``` js
> prompt(
> 	"Copy the text below into rssmix.com to create a single feed for all of your YouTube subscriptions.",
> 	["", ...document.querySelectorAll("#main-link.channel-link")].reduce((s, e) => {
> 		const [, a, b] = e.href.match("/((?:user)|(?:channel))/(.*)$");
> 		return (s && s + "\n") + "https://www.youtube.com/feeds/videos.xml?" + (a === "user" ? "user=" : "channel_id=") + b;
> 	})
>  );
> ```
>
> [source](https://gist.github.com/jeb5/da22862e469dea21e873acabb562f638)

https://www.reddit.com/r/ObsidianMD/comments/1agth05/need_help_optimizing_my_obsidian_workflow_advice/

## Plugins

- [Modals | Obsidian Plugin Developer Docs](https://marcus.se.net/obsidian-plugin-docs/user-interface/modals#accept-user-input)
- https://marcus.se.net/obsidian-plugin-docs/

### Tag Navigator

Alexander Obenaur has built a cross-reference navigation plugin that isn't a public Obisidian plugin where context of various notes can be found by combining tag contexts.

- [EXPERIMENT 001: Cross-reference Navigation in Obsidian](https://alexanderobenauer.com/labnotes/exp001/)
- [obsidian-tag-navigator (alexobenauer) (197 ★)](https://github.com/alexobenauer/obsidian-tag-navigator/) - Cross-reference navigation through your Obsidian tags and notes

# Potential Contribution

`requestSaveHistory` can't be called and needs to be replaced with `requestSaveLayout` ([source](https://github.com/alexobenauer/obsidian-tag-navigator/issues/3))

# Ideas

## Sync Obsidian on Android

- https://forum.obsidian.md/t/mobile-how-to-sync-vaults-with-git-on-android/20622/2
- https://renerocks.ai/blog/obsidian-encrypted-github-android/#android
- Lumberjack plugin for quick input or this https://forum.obsidian.md/t/android-quick-input-for-obsidian/16336

## Sync Obsidian on iPhone

- Used [this guide](https://meganesulli.com/blog/sync-obsidian-vault-iphone-ipad/) to sync with iPhone. The only issue was having to pay £20 to use [[Working Copy]], but I think there are alternatives that are free out there.
- Be careful when setting up as it’s possible to accidentally wipe the entire repo.

## a-shell Alternative

[Original Thread](https://discuss.logseq.com/t/alternative-way-of-git-syncing-on-ios-using-a-shell-for-free/8570)

- Install `a-shell` in the app store
- The `lg2` binary will be installed already
- Generate an SSH key, being sure not to use RSA-1
- Create a `~/Documents/.gitconfig` with the following to ensure the SSH key is being used for the git commands

```
[user]
	identityFile = id_ed25519
	password = ""
```

- Use the `pickFolder` to jump to the Obsidian folder
- Check that you're happy with the bookmark that `a-shell` has picked. It'll probably be something like `~Documents` (Note the lack of `/`)
- Create two shorcuts
	- Obsidian Push - An a-shell Execute command with the following commands: `cd ~Obsidian/second-brain` , `lg add -u`, `lg2 commit -m "mobile update"`, `lg2 push`
	- Obsidian Pull - An a-shell Execute command with the following commands: `cd ~Obsidian/second-brain`, `lg2 pull`, `open obsidian://`
- Note that you'll have to use the default behaviour of the full app opening (and not the extension)
- Annoyingly, the a-shell app comes to the foreground, and when going back to Obsidian, it triggers the shortcut again

# Graph Drawing

- [Obsidian and Graphviz Plugin](https://forum.obsidian.md/t/graphviz-and-hierarchical-graph-layout-a-review-and-plugin-proposal/31596/2?u=ooker)
- [Visual Spatial Note Taking](https://forum.obsidian.md/t/visual-spatial-note-taking-whiteboard-mind-map-concept-map/32346)

# Custom CSS

## Icon Prefix

It is possible to add favicons to common link content. For example for youtube videos, github repos etc.

An example of doing this for Youtube looks like the following

``` css
a[href*="www.youtube.com"] {
background:url(https://youtube.com/favicon.ico) no-repeat left center;
padding-left:19px;
}

```

- https://www.youtube.com/watch?v=oHg5SJYRHA0
- https://gist.github.com/oliveryh

## Admonition

Add the following CSS

``` css
.info-msg,
.success-msg,
.warning-msg,
.error-msg {
  margin: 10px 0;
  padding: 10px;
  border-radius: 5px 5px 5px 5px;
}
.info-msg {
  color: #059;
  background-color: #BEF;
}
.info-msg::before {
  content: "ℹ️";
  padding-right: 10px;
}
.success-msg {
  color: #270;
  background-color: #DFF2BF;
}
.success-msg::before {
  content: "✔️";
  padding-right: 10px;
}
.warning-msg {
  color: #9F6000;
  background-color: #FEEFB3;
}
.warning-msg::before {
  content: "⚠️";
  padding-right: 10px;
}
.error-msg {
  color: #D8000C;
  background-color: #FFBABA;
}
.error-msg::before {
  content: "❌";
  padding-right: 10px;
}
```

<span class="info-msg">**Info**: Here is some info</span>

<span class="success-msg">**Sucess**: Here is some success or tip</span>

<span class="warning-msg">**Warning**: Here is some warning</span>

<span class="error-msg">**Error**: Something has gone wrong here</span>

<span class="custom-msg">**Error**: Something has gone wrong here</span>

## Special Links

First pick a directory such as `People` or `Books` to house links you'd like to prepend with an emoji on your publish website

``` css
a[href*="<username>/Books/"],
a[href*="<username>/People/"] {
  padding-left: 5px;
  padding-right: 10px;
  background-color: #BEF;
  color: #1F5FCF;
  border-radius: 5px;
}
a[href*="<username>/Books/"]::before {
  content: "📖";
  padding-right: 5px;
}
a[href*="<username>/People/"]::before {
  content: "👨";
  padding-right: 5px;
}
```

[[Collections/Books/Digital Minimalism]] Is a great choice of book [[Cal Newport]]

# Ideas

- https://github.com/joeddav/obsidian-journal
- Fuzzy searching hyperlinks stored in a respository
  `grep -ro '\[.*\](\(.*\))' --include=\*.md | sed 's/\[//g' | sed 's/\](/\t/g' | sed 's/)//g' | sed 's/\.md:/\t/g' | fzf | awk -F\t '{print $3}' | xargs open`
	  - Improvement: Make sure that the URL can be extracted reliably once selected
- Create my own reading gantt chart using mermaid ([Mermaid Reading Gantt Charts ‧ joschua.io](https://joschua.io/posts/2023/01/11/mermaid-reading-gantt-charts/))

## Like Button

https://github.com/kometenstaub/customizable-page-header-buttons

# Theme

- Prefer Sanctum Theme with Remix Folder Icons

# Setup

## Plugins

![[Plugins]]

## Obsidian Piclo - Work Laptop

- mermaid-themes
- obsidian-admonition
- obsidian-checklist-plugin
- obsidian-copy-block-link
- obsidian-emoji-toolbar
- obsidian-enhancing-mindmap
- obsidian-graphviz
- obsidian-hotkeys-for-templates
- obsidian-style-settings
- table-editor-obsidian
- tag-navigator
- vantage-obsidian
- nldates-obsidian
- obsidian-minimal-settings

# Improvements

- [x] Fix icons on mobile
- [ ] Ensure Articles/Books/Readwise Reader notes are aggregated if possible
- [x] Merge repo project notes into Collection notes
- [x] Remove old notes that I no longer find useful
- [x] Use [Johny Decimal](https://johnnydecimal.com/) scheme to separate General folder
