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
const p = dv.page("Notes/Open Tasks Over Time");
const vals = [p.d0, p.d1, p.d2, p.d3].filter(v => v != null);

const row = dv.el("div", "", { attr: { style: "display:flex; gap:8px; align-items:stretch; width:100%;" } });

// Open Tasks — 1/4 width
const countCard = row.createEl("div", { attr: { style: "flex:1; background:var(--background-secondary); border:1px solid var(--background-modifier-border); border-radius:8px; padding:12px 16px; text-align:center; display:flex; flex-direction:column; justify-content:center;" } });
countCard.createEl("div", { text: String(count), attr: { style: "font-size:2em; font-weight:700; color:var(--text-normal); line-height:1;" } });
countCard.createEl("div", { text: "Open Tasks", attr: { style: "font-size:0.75em; color:var(--text-muted); margin-top:4px;" } });

// Task Trend — 3/4 width
if (vals.length >= 2) {
    const labels = ["T−1", "T−2", "T−3"];
    const trendCard = row.createEl("div", { attr: { style: "flex:3; background:var(--background-secondary); border:1px solid var(--background-modifier-border); border-radius:8px; padding:12px 16px;" } });
    trendCard.createEl("div", { text: "Task Trend", attr: { style: "font-size:0.75em; color:var(--text-muted); text-transform:uppercase; letter-spacing:0.05em; margin-bottom:8px; text-align:center;" } });
    const deltas = trendCard.createEl("div", { attr: { style: "display:flex; justify-content:space-around;" } });
    for (let i = 0; i < Math.min(3, vals.length - 1); i++) {
        const delta = vals[i] - vals[i + 1];
        const arrow = delta < 0 ? "↓" : delta > 0 ? "↑" : "–";
        const color = delta < 0 ? "var(--color-green)" : delta > 0 ? "var(--color-red)" : "var(--text-muted)";
        const col = deltas.createEl("div", { attr: { style: "text-align:center;" } });
        col.createEl("div", { text: `${arrow}${Math.abs(delta)}`, attr: { style: `font-size:1.4em; font-weight:700; color:${color}; line-height:1;` } });
        col.createEl("div", { text: labels[i], attr: { style: "font-size:0.72em; color:var(--text-muted); margin-top:4px;" } });
    }
}
```

```dataviewjs
const pages = dv.pages().where(p => p.file.tasks.where(t => !t.completed && t.status !== "<" && t.status !== "?").length > 0);

for (const page of pages.sort(p => p.file.path)) {
	const tasks = page.file.tasks.where(t => !t.completed && t.status !== "<" && t.status !== "?");
	dv.header(4, dv.fileLink(page.file.path));
	dv.taskList(tasks, false);
}
```
