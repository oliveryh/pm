---
createdAt: 2022-07-26T15:34:02Z
stargazerCount: 0
issueCount: 0
isArchived: true
name: control-centre
url: https://github.com/oliveryh/control-centre
isPrivate: true
deleted: false
status: archived
owner: oliveryh
---
# Architecture

Pulls::[[clear-habits]]
Pulls::[[Collections/Accounts/Obsidian|Obsidian]]
Pulls::[[Collections/Accounts/Sentry|Sentry]]
Pulls::[[Collections/Accounts/Slack|Slack]]
Pulls::[[Collections/Accounts/Trello|Trello]]

Control Centre was started while Textual was in an unstable CSS branch that was eventually released as v0.2.0. There are some improvements I'd like to make to the architecture:

- Consider an app design similar to https://github.com/darrenburns/kupo
- Try to use initial states, messaging, and async functionality

# Ideas

## Launcher

It may be possible to plug https://github.com/seatgeek/thefuzz into the textual-autoselect library to fuzzy match drop-down items.

# Refresh Gmail API

- Visit the [API and Services](https://console.cloud.google.com/apis/credentials?_ga=2.250791046.168173420.1666181797-1076444006.1664729097&project=control-centre-gmail) page

# Tips

## Start-up Time

In a recent textual blog post, it was recommended to not ["Work too hard on `on_mount`"](https://textual.textualize.io/blog/2022/11/26/on-dog-food-the-original-metaverse-and-not-being-bored/#dont-work-hard-on_mount). The following design pattern seems to work quite well:

``` py
class Table(DataTable):
    ....
	async def refresh_issues(self):
		self.issue_list.issues = get_tickets()
	
	def on_mount(self):
		self.call_after_refresh(self.refresh_issues)
```

[Another Textual blog post about multitasking](https://textual.textualize.io/blog/2022/12/07/letting-your-cook-multitask-while-bringing-water-to-a-boil/#__tabbed_1_1) explains that we `await` the time-consuming operations so that the application remains responsive.

# Inspiration

The [Projects - Textualize](https://www.textualize.io/projects/#textual) page has some good examples of apps that use [[Textual]]

- [ddqa (DataDog) (44 ★)](https://github.com/DataDog/ddqa) - Datadog's QA manager for releases of GitHub repositories
- [awsrun (fidelity) (71 ★)](https://github.com/fidelity/awsrun) - CLI and library to execute commands over one or more AWS or Azure accounts concurrently.

## Kupo

[kupo (darrenburns) (33 ★)](https://github.com/darrenburns/kupo) - A terminal file browser, kupo!

Textual reached a non-alpha stage since I started creating the control centre. Since `0.2.0` it's made some elements of my app broken, and I'd like to re-architecture the app. Kupo was created by [[Darren Burns]] who currently works for Textual and has some design principles I may want to follow.

## Grid Info

[gridinfo (davep) (2 ★)](https://github.com/davep/gridinfo) - A Python/Textual app to look up grid information

## Python AST Explorer

https://piped.mha.fi/watch?v=NdOryuBIXEQ

# Notes

## CSS

- https://css-tricks.com/introduction-fr-css-unit/ could be a good way to achieve some flexible grid layout that works both full-screen and half-screen

# Quick Display

## iTerm2

iTerm2 allows a Hotkey Window to be configured so a floating terminal can be added. Once the hotkey is configured, you'll need to edit the Hotkey Window profile text if it doesn't appear the same as the default profile.
