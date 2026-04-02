# Introduction

DataviewJS allows you to create more interactive Obsidian pages

# Examples

## API Fetch

```dataviewjs
const response = await fetch('https://meowfacts.herokuapp.com/')
const body = await response.json()
const randomFact = body.data[0]
dv.el("span", randomFact)
```

## Button

```dataviewjs
const { createButton } = this.app.plugins.plugins["buttons"];
const clickHandler = async () => {
	dv.el('div', 'You clicked me!')
	
}
createButton({ app, el: this.container, args: { name: "📔 Click Me" }, clickOverride: { click: clickHandler, params: [] }, });
```

## Javascript

```dataviewjs
const binType = (dv.luxon.DateTime.local().weekNumber % 2) ? "General Waste" : "Recycling";
const html = `<p>The next bin day is <b>${binType}</b></p>`
dv.el("div", html);
```
