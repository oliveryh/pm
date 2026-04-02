---
createdAt: 2020-03-24T21:49:04Z
stargazerCount: 0
issueCount: 0
isArchived: true
name: pandora
url: https://github.com/oliveryh/pandora
isPrivate: false
deleted: false
status: archived
owner: oliveryh
---
Dependency::[[Html2Epub]]

# Reading

## Further Reading

- [pockexport (karlicoss) (99 ★)](https://github.com/karlicoss/pockexport) - Export/access your Pocket data, including highlights!
- [kobo-wget-sync (wernerb) (9 ★)](https://github.com/wernerb/kobo-wget-sync) - Scripts that allow kobo to sync with a remote web-server through wget
- [KoboCloud (fsantini) (476 ★)](https://github.com/fsantini/KoboCloud) - A set of scripts to synchronize a kobo reader with popular cloud services
- [bye-bye-feedly (michaelx) (33 ★)](https://github.com/michaelx/bye-bye-feedly) - Export your read later (formerly saved/favorited) articles from feedly, and access them from a simple reader.
- [readability (mozilla) (4.6k ★)](https://github.com/mozilla/readability) - A standalone version of the readability lib
- [ReadabiliPy (alan-turing-institute) (60 ★)](https://github.com/alan-turing-institute/ReadabiliPy) - A simple HTML content extractor in Python. Can be run as a wrapper for Mozilla's Readability.js package or in pure-python mode.
- [kindleServer (edgartaor) (134 ★)](https://github.com/edgartaor/kindleServer) - This project serve HTML files (and a few more) saved in your computer with a UI suitable for Kindle web browser. On top of that, it include a Read Mode (thanks to ReadabiliPy) to display the text in a comfortable size without have to use the 'Article Mode' in Kindle web browser.
- [Kobo-Dashboard (Mavireck) (16 ★)](https://github.com/Mavireck/Kobo-Dashboard) - A dashboard for Kobo, including a clock, an interactive calendar widget, a weather widget and a phone-notification widget
- [MobileRead - NickelMenu](https://www.mobileread.com/forums/showthread.php?t=329525)
- [Koreader-Calibre sync](https://git.sr.ht/~harmtemolder/koreader-calibre-plugin)
- https://www.tdpain.net/blog/a-year-of-reading
- https://content-parser.com/
- [rss-reader (koddsson) (2 ★)](https://github.com/koddsson/rss-reader) - A simple RSS reader that doesn't have a backend but only stores data in the browser. Doesn't have a lot of fancy features but is just simple and nice.
- [yamanote (fasiha) (76 ★)](https://github.com/fasiha/yamanote) - Computers are supposed to be tools for thinking. A nerdy, perhaps silly, tool is a list of bookmarks with excerpts. I've tried to use social media, journal apps, and Pinboard to achieve this but they're all lacking. Let's go old school. Very WIP.
- [feedi](https://github.com/facundoolano/feedi) - A similar project using Python and htmx

# Watching

The purpose of this component is to reduce the amount of noise around finding and watching videos (mostly on YouTube).

One privacy-friendly YouTube alternative is called [Piped (TeamPiped) (1.6k ★)](https://github.com/TeamPiped/Piped).

# Reading

The use of RSS appears to be a good way to interact with incoming feeds.

# Web Server

Plugging in the kobo to download articles is becoming an anoyance so I've decided to make the kepub files downloadable through a web server. That means I can display more useful information (such as reading time and blurbs) and let this happen automatically.

This article on [Building a Full Stack Flask HTMx Application](https://codecapsules.io/docs/tutorials/build-flask-htmx-app/) appeared to give a good introduction and it is the basis of my code. In addition, there are some examples of [using Django with htmx](https://www.mattlayman.com/blog/2021/how-to-htmx-django/) instead.

I intend to do the following:
1. Run a script that will eventually be behind a cronjob that downloads the URLs added to the Notion database
2. Does all the database updates there and then creates then saves the kepub file to the server and add an entry to the sqlite server
3. The HTMX/sqlite/Flask stack code will then serve this in a table
4. A generic python http server will then serve the directory of files
5. There will be a download to the file in the table that is pointed to this directory

Ways in which this could be extended is that I could potentially use this framework as a basis for low distraction consumption of other mediums or combine this with content aggregation so I can see the latest HN articles and press a button that kicks off the process of converting this to kepup. This might cut out the use of notion entirely.

# HTMX

- [How to Create a Responsive Table with HTMX and Django | HackerNoon](https://hackernoon.com/how-to-create-a-responsive-table-with-htmx-and-django)

# Boox / InoReader Combo

- [Is there an RSS reader which can highlight, annotate AND export the notes? - #8 by ryanjamurphy - Software - MPU Talk](https://talk.macpowerusers.com/t/is-there-an-rss-reader-which-can-highlight-annotate-and-export-the-notes/19078/8)

https://www.inoreader.com/reader/api/0/stream/contents/user/-/state/com.google/starred?output=json&n=10&AppId=REDACTED&AppKey=REDACTED

# TUI Solution (textual)

## Offline First

https://notabug.org/ploum/offpunk has a similar philosophy of being offline first and allowing rich content to be reproducable offline and in the terminal. It mentions a lot of technologies like readability and beautifulsoup which I suspected I'd need for my project.

https://xwmx.github.io/nb/ also appears to be a similar tool but is largely run using a CLI. Maybe I could extend this with a TUI.

- Offline first solution that can sync the sqlite database to a remote source
    - When running locally, mark all changed rows as "dirty"
    - When a connection is made then upload dirty rows to remote DB and mark "clean"
- Save markdown of webpage on page add
    - See if there is a way to display this markdown on textual and also split this into segments
    - If a segment is selected and a highlight shortcut made, then this information is stored in the DB
- Images might viewable on termux or alternatively these will have to be viewed in a different way. If they are also stored on the device then
- https://github.com/dask-contrib/dask-ctl/pull/19
- https://github.com/Derik117/todorant-tui
- [x] See if textual works on the Boox eReader
- Create a PoC where it's possible to input a URL, generate the markdown for offline viewing, and highlight areas of the text
- Further steps would involve the ability to include RSS feeds, view images, and track how long was spent reading the article, intelligent syncing with a remote DB, adding RSS feed inputs, Twitter etc.

# Obsidian Plugin

https://github.com/arpitbbhayani/obsidian-hackernews

## DB Support

- Using the [obsidian-sqlite3 (windily-cloud) (9 ★)](https://github.com/windily-cloud/obsidian-sqlite3) plugin, it appears to be possible to create and connect to a database

## Mac Setup

- Install the v87 Darwin package from the [better-sqlite3 repo](https://github.com/WiseLibs/better-sqlite3/releases/tag/v7.6.2)
- [x] Create a PoC where it's possible to input a URL, generate the markdown for offline viewing, and highlight areas of the text
- Further steps would involve the ability to include RSS feeds, view images, and track how long was spent reading the article, intelligent syncing with a remote DB, adding RSS feed inputs, Twitter etc.

# Obsidian Plugin

- It looks like using a TUI for reading isn't the best experience. Looking an monocspace for prose is not optimal at all and the inability to easily see images could get tiring. I'm going to do a PoC of an Obsidian Plugin with the following acceptance criteria:
- It must allow me to view markdown in a nice format
- I should be able to highlight blocks
- It should be available offline for long periods of time
- While offline, you should be able to read various articles, mark articles as complete, highlight, track time read, and see images
- It should be able to run on mobile and preferably Boox

Stretch goals would include:
- Being able to generate a readable markdown representation of an online article in the UI
- Displaying all articles and their read times, completion, author on a dataview table

## RSS Option

One solution might be to use https://github.com/joethei/obsidian-rss to populate the articles into obsidian and then build the highlighting capability on top of that. The only thing left would be to manage RSS feeds and track how many feed items actually get downloaded.

# RSS Feeds

- [Textual Blog RSS](https://textual.textualize.io/feed_rss_created.xml)
