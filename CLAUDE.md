# Vault Steering Document

This is Oliver's personal knowledge management (PKM) vault, built in Obsidian. It functions as a life operating system — covering goals, health, projects, finances, daily notes, and reference material.

## Owner

- **Name:** Oliver
- **Partner:** Chloe
- **Cat:** Teddy
- **Nephew:** Loki
- **Home:** 55 Avon Street (owned, mortgage with Nationwide)
- **Role:** Software engineer

## Folder Structure

| Folder | Purpose |
|--------|---------|
| `00 Inbox/` | Unprocessed items — `Inbox.md` for general capture, plus topic-specific files |
| `10 Health/` | Physical and mental health logs, physio, exercise, medical records |
| `20 Lifestyle/` | Recipes, travel, dwelling notes |
| `30 Goals/` | Life goals, values, sprints, daily triage, productivity system |
| `40 News & Media/` | Journalism, podcasts, art |
| `50 Software Engineering/` | Career, tools, concepts, languages |
| `60 Life System/` | Digital minimalism, self-actualisation, optimising inputs |
| `70 Maths & Science/` | Mathematics and science notes |
| `80 Ethics & Society/` | Veganism, technology ethics, society |
| `90 Learning & Thinking/` | Metacognition, learning strategies |
| `Archive/` | Retired notes |
| `Collections/` | Structured item libraries: Assets, Devices, Books, Accounts, GitHub repos, etc. |
| `Daily Notes/` | Daily journal entries — `YYYY-MM-DD.md` |
| `Media/` | Attachments (images, PDFs) |
| `Notes/` | Standalone topic notes with dates |
| `People/` | One note per person |
| `Projects/` | Active project pages; completed ones move to `Projects/Completed/` |
| `Reference/` | Reference material — `Avon Street.md`, `Finances.md`, etc. |
| `SOPs/` | Standard operating procedures |
| `Tools/` | Notes on tools Oliver uses |
| `__scripts__/` | Python/shell scripts for vault maintenance |

## Task & Goal System

### Sprints

- Stored in `30 Goals/Sprints/` as `Sprint YY.NN.md` (e.g. `Sprint 26.08` = 2026, sprint 8)
- Typically ~2 weeks long
- Each file has a `# Sprint Goals` section and a `# Log` section

### Daily Triage

- Stored in `30 Goals/Daily Goals/Triage - YYYY-MM-DD.md`
- Pulls together tasks from TickTick, Linear, sprint goals, and carry-overs

### External Task Tools

- **Linear** (`linear.app/oliveryh`) — longer-term goals and sprint issues
- **TickTick** — day-to-day habits, routines, and tasks

## Conventions

- **Daily notes:** `Daily Notes/YYYY-MM-DD.md` — tasks as `- [ ]`, events as plain bullets
- **Log sections:** All `# Log` sections use `## YYYY-MM-DD` subheadings, sorted newest-first (enforced by `__scripts__/sort_log_headings.py`)
- **Sprint naming:** `YY.NN` — year then sprint number
- **Wikilinks:** Internal links use `[[Note Name]]` syntax
- **Assets base:** Items in `Collections/Assets/` use `Assets.base` for structured metadata
- **Telegram responses:** When mentioning a vault file path, write it as plain quoted text without the .md extension (e.g. "Daily Notes/2026-04-22") — do not use Obsidian URIs or code font, as both cause formatting issues in Telegram

## Scripts

| Script | Purpose |
|--------|---------|
| `__scripts__/sort_log_headings.py` | Sorts `## YYYY-MM-DD` entries under `# Log` sections newest-first. Run with `python3 __scripts__/sort_log_headings.py <file(s)>` |
| `__scripts__/count_open_tasks.py` | Counts open tasks across vault per commit and updates `Notes/Open Tasks Over Time.md` with a Mermaid chart. Run with `python3 __scripts__/count_open_tasks.py` |

## Values & Context

Oliver's priorities (in order): Physical → Mental → Relationships → Growth → Lifestyle → Career → Finances → Avocation → Contribution → Travel.

Key ongoing themes:
- Reducing phone/screen use (Brick mode, digital minimalism)
- Moving toward veganism and physical fitness
- Simplifying digital footprint (consolidating into Obsidian)
- Deeper relationships over surface-level ones
- Financial independence and joint finances with Chloe
