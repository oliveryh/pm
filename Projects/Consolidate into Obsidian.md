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

- TickTick - Habits, Routines, and Tasks within a Sprint
- Linear - Longer term goals
- Obsidian
- iCloud

# Actions

- [ ] Add `secrets.md` and `Media/` to `.gitignore` (or encrypt)
- [ ] Migrate back to `second-brain` repo
- [ ] Schedule backup commits on a cron job
- [ ] Add longer term backup separate from GitHub

## Migration Candidates

There are some key places I store data that I’d like to consolidate into Obsidian if possible

- [x] Notion
- [x] Google Drive
- [x] Piclo Obsidian repo
- [x] iCloud Files
- [x] Dropbox
- [ ] External storage (SSDs, SD cards)

# Daily GitHub Backups

## Approach

Use a cron job or scheduled task to commit and push the vault to a private GitHub repo once per day. Since the vault is already managed as a directory, this is straightforward with a shell script.

## Script

```bash
#!/bin/bash
cd /path/to/vault
git add -A
git commit -m "backup: $(date '+%Y-%m-%d')" --allow-empty
git push origin main
```

Schedule via cron (11pm daily):

```
0 23 * * * /path/to/backup.sh >> /tmp/obsidian-backup.log 2>&1
```

## Considerations

- **Private repo** — vault contains sensitive data (finances, health, secrets.md)
- **secrets.md** — add to `.gitignore` or use [`git-crypt`](https://github.com/AGWA/git-crypt) to encrypt it at rest
- **Obsidian Sync vs Git** — these can coexist; Git is purely a backup, not a sync mechanism
- **Binary files** — attachments (images, PDFs) will bloat the repo over time; consider a `.gitignore` for `Media/` or use Git LFS
- **Conflict with existing task** — the "1 way sync between pm synced files and second-brain repo" task in Other Tasks may overlap with this; worth resolving which takes priority

# Log

## 2026-04-18

- Finished migrating [[iCloud]] files where possible into Obsidian primarily
	- Finance documents
	- Creating a hiking checklist note from existing XLSX files
- Migrated old Piclo obsidian notes
- Removed unused Media files
- Combined Assets and Devices collections

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
