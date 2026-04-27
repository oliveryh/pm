*A place to call home*

## Recently Edited

```dataviewjs
const now = DateTime.now();
const pages = dv.pages()
    .sort(p => p.file.mtime, "desc")
    .limit(5);

function timeAgo(mtime) {
    const totalMins = Math.floor(now.diff(mtime, "minutes").minutes);
    const h = Math.floor(totalMins / 60);
    const m = totalMins % 60;
    if (h > 0 && m > 0) return `${h}h ${m}m`;
    if (h > 0) return `${h}h`;
    return `${m}m`;
}

const wrap = dv.el("div", "", { attr: { style: "display:flex; flex-direction:column; gap:4px;" } });
for (const p of pages) {
    const row = wrap.createEl("div", { attr: { style: "display:flex; justify-content:space-between; align-items:center; gap:12px;" } });
    const link = row.createEl("a", { text: p.file.name, cls: "internal-link", attr: { href: p.file.path, "data-href": p.file.path, style: "overflow:hidden; text-overflow:ellipsis; white-space:nowrap;" } });
    row.createEl("span", { text: timeAgo(p.file.mtime), attr: { style: "color:var(--text-muted); font-size:0.85em; white-space:nowrap; flex-shrink:0;" } });
}
```

```dataviewjs
const tasks = dv.pages().file.tasks.where(t => !t.completed && t.status !== "<" && t.status !== "?");
const count = tasks.length;

dv.el("div", `
  <div style="
    display: inline-block;
    background: var(--background-secondary);
    border: 1px solid var(--background-modifier-border);
    border-radius: 8px;
    padding: 16px 24px;
    min-width: 160px;
    text-align: center;
  ">
    <div style="font-size: 2em; font-weight: 700; color: var(--text-normal);">${count}</div>
    <div style="font-size: 0.85em; color: var(--text-muted); margin-top: 4px;">Open Tasks</div>
  </div>
`, { cls: "dataview" });
```

```dataviewjs
const pages = dv.pages().where(p => p.file.tasks.where(t => !t.completed && t.status !== "<" && t.status !== "?").length > 0);

for (const page of pages.sort(p => p.file.path)) {
	const tasks = page.file.tasks.where(t => !t.completed && t.status !== "<" && t.status !== "?");
	dv.header(4, dv.fileLink(page.file.path));
	dv.taskList(tasks, false);
}
```
