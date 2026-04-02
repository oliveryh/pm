---
name: triage-tasks
description: Triage daily note items and TickTick tasks due today into a batched Triage note in the Inbox. Use when the user wants to triage, batch, or plan tasks for the day.
---

# Triage Tasks

Combine tasks from today's (and recent) daily notes with TickTick tasks due today, then group them into actionable batches saved as a Triage note in `00 Inbox/`.

## Steps

### 1. Read daily notes

Read today's daily note and up to 3 recent daily notes using the obsidian CLI:

```bash
obsidian daily:read
```

Or read a specific note:

```bash
obsidian read path="Daily Notes/2026-03-30.md"
```

### 2. Extract task-like items

From the daily notes, identify **two types** of items:

**Explicit tasks** — lines with checkbox syntax:
- `- [ ] Task text` → unchecked (include)
- `- [x] Task text` → already done (skip)

**Implicit tasks** — plain text lines that read as an action, intention, or goal. Examples:
- "Record macronutrients" → task (imperative verb, personal action)
- "Use standing desk more" → task (behavioural goal)
- "Walking pads at work connect to Apple Watch" → NOT a task (observation/note)
- "Jade mentioned X" → NOT a task (log/note)

Use this heuristic: if the line starts with an imperative verb or describes something the user should *do*, it's a task. If it's an observation, fact, or quote, it's not.

### 3. Fetch TickTick tasks due today

Use the TickTick MCP tool to get tasks due today:

```
mcp__ticktick__list_undone_tasks_by_time_query with query_command="today"
```

Extract: task title, project name (if available), priority, due time (if set).

### 4. Combine and batch

Merge all items into one list. Then group them into **batches** — clusters of tasks that make sense to do together based on:

- **Context** (at home, at work, online, errands, calls)
- **Energy level** (quick wins, deep focus, admin/maintenance)
- **Theme** (health, home, social, learning, work)

Label each batch clearly. Example batch names:
- `🏠 Home & Errands`
- `💻 Deep Work`
- `⚡ Quick Wins (< 5 min)`
- `📱 Admin & Messages`
- `🌱 Health & Habits`

### 5. Create Triage note

Create a new note at `00 Inbox/Triage.md` (overwrite if it already exists):

```bash
obsidian create name="Triage" path="00 Inbox/Triage.md" overwrite silent content="<content>"
```

Format the note as:

```markdown
---
created: <today's date>
tags: [triage]
---

# Task Triage — <date>

## Sources
- Daily notes: <list of dates used>
- TickTick: <N> tasks due today

---

## Batch 1: <Batch Name>

- [ ] Task A _(TickTick — Project Name)_
- [ ] Task B _(Daily Note — 2026-03-29)_

## Batch 2: <Batch Name>

- [ ] Task C
...

---

## Ungrouped

Tasks that don't fit neatly into a batch go here.
```

Use `\n` for newlines in the obsidian CLI `content=` argument.

## Notes

- Skip tasks already marked `[x]` in daily notes.
- If TickTick returns no tasks for today, note that in the Sources section.
- If a daily note item was already added to TickTick (same or similar wording), deduplicate it.
- Triage is a snapshot — it's okay to regenerate it by running the skill again.
