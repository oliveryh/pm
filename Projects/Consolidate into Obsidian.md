# Motivation

I’ve attempted to map out my digital life with some success but it’s still an overwhelming effort to think about how to simplify it. I’d like to instead consider creating a new space where I can bring over what I truly need and remove what’s left.

# Approach

1. [x] Buy Obsidian Sync
2. [x] Start migrating things over to this new synced vault
3. [x] Plot the size of the repo over time


I’m hoping it’ll be easier to see second-brain slowly go down in size and this new repo to go up (but not as much). In conjunction with all this, I’d like to explore how Claude Code might help me.

Ideally the vault would not include any excess whatsoever.

Some things to avoid too:
- Hoarding data for historical reasons (I hardly keep up with personal recommendations of TV, Reading, Movies let alone what the internet suggests)

## Tools to Keep

- TickTick
- Linear
- Obsidian
- iCloud

# Actions

## Migration Candidates

There are some key places I store data that I’d like to consolidate into Obsidian if possible

- [x] Notion
- [x] Google Drive
- [ ] Piclo Obsidian repo
- [ ] iCloud Files
- [ ] Dropbox
- [ ] External storage (SSDs, SD cards)

## Other Tasks

- [ ] Remove unused Media files
- [ ] Combine Assets and Devices collections
- [ ] Set up a 1 way sync between pm synced files and second-brain repo
- [ ] Pick theme and font
- [ ] Books could be consolidated with Collection notes

# Log

## 2026-04-05

- Finished migrating [[Google Drive]] to leave two files that I regularly want to update

## 2026-04-02

- Imported markdown using standard Notion loader for Obsidian to import files
- Formatted with preferred spacing using Lint plugin
- Converted PDF file references to embeds using Claude Code
- Replaced references to subpage markdown files with in-line versions that respect heading level using Claude Code

## 2026-03-31

- Transferred Archived files from Notion
- Process was clunky with Claude Code, so I'll probably use the standard loader for the remainder of the files

## 2026-03-30

- Migrated Notion archive export into the vault: created 27 notes in `Archive/` with clean `YYYY - Name` filenames, stripping Notion hashes and "(Archived @...)" suffixes
- Added pagination to the Notion Pages sync script (`Pages.md`) to fetch beyond the 100-result API limit

## 2026-03-25

- Removed Working Copy from mobile phone

## 2026-03-21

- I used Claude Code to extract topics from Daily Notes and move them into individual notes

## 2026-03-14

- I started migrating from commit `45d287e` in the Second Brain repo
- Used Claude Code to modify https://github.com/amedeedaboville/gix-of-theseus to filter for markdown files and ignore 'Collection' and 'Readwise' directories to see git history
	- The lack of burndown implies a lot of my notes are additive

![[git-history-of-second-brain-repo.png]]
