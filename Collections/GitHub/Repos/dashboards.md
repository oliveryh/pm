---
createdAt: 2022-02-25T15:38:19Z
stargazerCount: 0
issueCount: 20
isArchived: false
name: dashboards
url: https://github.com/oliveryh/dashboards
isPrivate: true
deleted: false
status:
owner: oliveryh
---
Input::[[Auto Export]]
Pulls::[[Collections/Accounts/GitHub|GitHub]]
Input::[[Monzo]]
Pulls::[[Readwise Reader]]
Pulls::[[Collections/Accounts/TickTick|TickTick]]

*Dashboards is a project to aggregate and visualise data owned both personally or externally.*

# Actions

# Reference

Currently hosted at http://139.162.225.25/dashboards/

# Resources

- [datasette-dashboards (rclement) (18 ★)](https://github.com/rclement/datasette-dashboards) - Datasette plugin providing data dashboards from metadata
- [Discussion on Datasette Dashboard](https://github.com/simonw/datasette/discussions/960)
- [Google Drive to SQLite](https://simonwillison.net/2022/Feb/20/google-drive-to-sqlite/) - Example of loading data directly into sqlite
- [timeliner (mholt) (3.2k ★)](https://github.com/mholt/timeliner) - All your digital life on a single timeline, stored locally (timeline; javascript; agenda)
- [markwhen (kochrt) (1.7k ★)](https://github.com/kochrt/markwhen#references) - Make a cascading timeline from markdown-like text. Supports simple American/European date styles, ISO8601, images, links, locations, and more.
- [trustfall (obi1kenobi) (1.4k ★)](https://github.com/obi1kenobi/trustfall) - If GraphQL were more like SQL
- https://github.com/taleshape-com/shaper
- https://github.com/Lybron/health-auto-export
- [tmcw/devstats | Val Town](https://www.val.town/v/tmcw/devstats)

# Inspiration

- [How to Set Up This Next-Level Personal Home Dashboard in Your Kitchen | Grafana Labs](https://grafana.com/blog/2019/10/29/how-to-set-up-this-next-level-personal-home-dashboard-in-your-kitchen/)
- [timeline (nicbou) (69 ★)](https://github.com/nicbou/timeline) - Collects personal data from different sources, displays it as a daily diary.
- [life-monitor (kklein) (7 ★)](https://github.com/kklein/life-monitor) ([post](https://kevinkle.in/posts/2022-05-21-life_monitor/))
- [Life Monitor - Blog](https://kevinkle.in/posts/2022-05-21-life_monitor)/
- [GitHub - samsquire/ideas: a hundred ideas for computing - a record of ideas - https://samsquire.github.io/ideas/](https://github.com/samsquire/ideas#5-life-engine)
- [GitHub - darekkay/dashboard: Customizable personal dashboard and startpage](https://github.com/darekkay/dashboard)
- [Making your own e-paper dashboard for home from scratch!](https://lengrand.fr/complete-setup-epaper/)
- [GitHub - pascalw/kindle-dash: Power efficient dashboard for Kindle 4 NT devices](https://github.com/pascalw/kindle-dash)
- [Your next smart home device is a $30 used Kindle - Matt Healy](https://matthealy.com/kindle)
- [air-raid-monitor (dr-mod) (60 ★)](https://github.com/dr-mod/air-raid-monitor) - Air-raid sirens in Ukraine monitor device
- [7 Colour E-Ink Display For Raspberry Pi](https://core-electronics.com.au/guides/colour-e-ink-display-raspberry-pi)
- https://github.com/k0rventen/apple-health-grafanav
- [How Is Felix Today?](https://howisfelix.today/?)
- [How to read Hacker News threads with most recent comments first | Simon Willison's TILs](https://til.simonwillison.net/hacker-news/recent-comments)
- [Convert git log output to JSON using jq | Simon Willison's TILs](https://til.simonwillison.net/jq/git-log-json)
- https://github.com/pingcap/ossinsight-lite
- https://github.com/glanceapp/glance
- [ossinsight-lite (pingcap) (378 ★)](https://github.com/pingcap/ossinsight-lite) - 🚧[WIP] Yet another customizable free GitHub stats dashboard based on TiDB Serverless
- Low code dashboards
	- Retool
	- Kivy
	- Keel - Appears to just be backend
	- Appsmith (endorsed [here](https://cep.dev/posts/every-infrastructure-decision-i-endorse-or-regret-after-4-years-running-infrastructure-at-a-startup/))
	- Interval
	- Windmill.dev looks like a more developer focused solution
	- Reflex (Formerly Pynecone)
	- [FastHTML](https://www.answer.ai/posts/2024-08-03-fasthtml.html)
	- [Hyperdiv - Reactive Web Framework for Python](https://hyperdiv.io/)
	- [Mesop](https://google.github.io/mesop/)
	- [Superblocks | Build modern internal apps in days, not months](https://www.superblocks.com/)
- https://www.basedash.com/
- [My Inky Dashboard - Matthew Somerville](https://dracos.co.uk/wrote/inky-dashboard/)
- [Evidence - Business Intelligence as Code](https://evidence.dev/) - Close similarities to Observable Framework
	- Could use this for inspiration on nice ways to present interactive articles
- [PyPI Data](https://py-code.org/stats)
- https://superglue.cloud/
- https://hawksley.org/2026/02/17/timeframe.html

# Ideas

- Update datasette-dashboards static/dashboards.js to include base_url from application
- Sync phone files to server using [Sync Linux Server](https://levelup.gitconnected.com/using-termux-to-synchronise-with-remote-machines-linux-macos-5826978a3328)
- Read https://beepb00p.xyz/unnecessary-db.html and see if my dashboard implementation follows some of these suggestion
- [HPI (karlicoss) (1.1k ★)](https://github.com/karlicoss/HPI#ad-hoc-and-interactive) - Human Programming Interface 🧑👽🤖 - Example of ad-hoc graphs made easy using a data access layer
- D3 Timeseries Graph - Graph to show github metrics over time (Obsidian stats json showing plugin usage over time)
- Location Heatmap Video - See what a heatmap from Google Location data looks like over time
- Visited websites URLs over time

# Things to Plot

- Google location
- eReader reading times
- Github contributions
- Obsidian plugin download chart (git scraper potentially)
- Energy usage of flat
- Monzo payments
- Tracking train prices
- Cycling data
- Custom Clear Habits data
- Trello API data
- Halo medals
- YouTube History
- Netflix History
- Size of Obsidian Notes over time
- CLOC for Obsidian file

# Design

Format the structure of data in the following way
- Database level matches source of data
- Table level matches the schema

For example, we might have the following
- DB: Halo
	- Table: Matches
	- Table: Medals
- DB: Phone
	- Table: Screen Time
	- Table: Battery Consumption
- DB: eReader
	- Table: Reading Time

This can also be expressed in how the directory structure of the datasette instance goes.

We make use of the [json lines (jsonl) format](https://jsonlines.org/)

# Contribution Ideas

- datasette-password-auth supports base_url
- datasette-dashboards supports base_url
- datasette-dashboards correct layout attribute to allow different number of charts on each row

# Modules

## PC > Activity (ActivityWatch)

### Run on StartUp Mac

There appears to be a problem running ActivityWatch on Mac. The only way to get it open reliably was by using a shell command. One way to run this on startup was the following
1. Create a file in `~/Library/Scripts/activitywatch.command` with the following contents

```bash
#!/usr/bin/env bash
open /Applications/ActivityWatch.app
```

2. Open **Users & Groups** -> **Login Items** and select the file

This should then run the background process on start-up

# Guides

## Editing Charts in Vega Editor

- Make sure that there is no password protection on the end-points by removing the `databases.<database name>.allow.id` fields
- Run `datasette` with the `--cors` flag when editing locally
- Click the top right corner of the chart and select "Edit in Vega Editor"
- This should then provide an IDE for you to edit the chart

## Updating `datasette-dashboards`

- Run `poetry remove datasette-dashboards`
- Run `poetry add git+https://github.com:oliveryh/datasette-dashboards#1c3bb599be5b06a766b42e72c463b63ef0c4b0b2` replacing the hash appropriately

## Observable Plot

- [Plot Cheatsheets - Layouts / Observable | Observable](https://observablehq.com/@observablehq/plot-layouts-cheatsheet?collection=@observablehq/cheatsheets)
- [Observable Framework Slack Community](https://observablehq.com/slack/join)
- [Observable Framework Data Loaders Demo](https://u29966503.ct.sendgrid.net/ls/click?upn=u001.tDwyfX2YBL3dXiP32noWVkoYXAq5ga6WzoGGXzKR5b8DshW9tPBzr7bzMiZyK2QRR81dnRTy-2BGyysNgfoJbzu2XGy-2FDwsylIj-2FcoQquVve229n-2Bu0TZj3hrD307TnhzEA-2Fl5ySf268i-2BDUl6lB3X5f9lJOalmVK0MMEddkcIzEy-2FWD786hijVlncSEsiZdRNLBxlpufr-2Bq3hCTTk6AA47oQQQ7RDYxtgrQfOhyUxE-2FMxJwPF-2F11Ul0wRQbWc66Fprup6rdorK0jGi1CsErjN5lqBBgPiCIONZ1Lhj-2FdGOqjajQ0UM4Up62Q5yT58-2FGEjeZwE8Fi9JNA4kyI77kUHZVspLFTloHzWibyFJKA8G-2B5cIUPjEXZAQ5Avd-2F-2FatYiX_NXA_c-2BeCXh-2FANhFvUjn5MSKUD0Wviq-2B66vC5RDbe82RIQ6DAj-2B6rJrjYYpbxkPvZvT-2Bhs9vsv7BS-2FCQvdI3ZB-2FWpVz7EEyTb4yUD5l61RnqCIk8wwD9l-2Fs8FResWqc4ncLStQSDDzeMYscQz1B1ppMxO-2FpOJLHh-2FIfMfi5XjH0EPet3UAGQf9RCAiPpeolbia3rkokbFLhyjLtXXMPQg-2BGUzzeqiVCvdcJeBo6DndiEZAXEUqHa8FvwRTU14FEpvtOM28gFYmRHRuPMpOTD-2BDCFYeryX3AFKC6om51FjK3KfEWZ6sN2pGvryAA5V0LUF8-2FMQg-2BtffzE1jjnRoQDjXQ-2F1HUuwYlcw-2FY2KyXVz5uQQaGPF70dwt1-2FPeGKm-2FSb-2B6HrD)

## Uplink and Pydantic

- [Computed fields in pydantic – Daniel Lenz](https://daniellenz.blog/2021/02/20/computed-fields-in-pydantic/)

# Chart Ideas

## Spend during lunch

```
SELECT strftime('%Y', created) AS year,
       merchant_name,
       - SUM(amount) / 100 AS sum_year,
       COUNT(*) AS count_year
FROM current
WHERE strftime('%H:%M', created) BETWEEN '10:00' AND '15:00'
      AND strftime('%w', created) BETWEEN '1' AND '5'
      AND category = 'eating_out'
GROUP BY year, merchant_name
HAVING count_year > 2
ORDER BY year DESC, count_year DESC
```

# Log

## 2026-04-27

- Set up Linode server to use `uv` installed virtual env after Ubuntu upgrade

## 2025-02-01

- I tried Basedash but it's too expensive

## 2024-09-14

- I followed [this guide](https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-nginx-on-ubuntu-14-04) to add basic auth to the dashboard. This means it should be easier for me to start adding more sensitive information without accidentally exposing it.
