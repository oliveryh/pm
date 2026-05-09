![[Projects.base]]

## Timeline

```dataviewjs
const { MarkdownRenderer, Component } = require("obsidian");

const today = DateTime.now().toISODate();
const cutoff = "2025-01-01";

const pages = dv.pages('"Projects"')
    .where(p => p.start_date != null)
    .where(p => {
        const d = p.start_date?.toISODate?.() ?? String(p.start_date).slice(0, 10);
        return d >= cutoff;
    })
    .sort(p => p.start_date);

const sections = { Completed: [], Active: [], Idea: [] };
for (const p of pages) {
    const s = p.status ?? "Idea";
    if (s in sections) sections[s].push(p);
}

let gantt = "gantt\n    title Project Timeline\n    dateFormat YYYY-MM-DD\n    todayMarker on\n";

const mods = { Completed: "done, ", Active: "active, ", Idea: "" };

for (const [status, projs] of Object.entries(sections)) {
    if (projs.length === 0) continue;
    gantt += "\n    section " + status + "\n";
    for (const p of projs) {
        const start = p.start_date?.toISODate?.() ?? String(p.start_date).slice(0, 10);
        const end = p.end_date?.toISODate?.() ?? today;
        const name = p.file.name.replace(/[:#,]/g, "").trim();
        gantt += "    " + name + " : " + mods[status] + start + ", " + end + "\n";
    }
}

const tick = "\`\`\`";
const el = dv.el("div", "");
await MarkdownRenderer.render(app, tick + "mermaid\n" + gantt + "\n" + tick, el, dv.current().file.path, new Component());
```
