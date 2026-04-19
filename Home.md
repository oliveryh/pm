*A place to call home*

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
