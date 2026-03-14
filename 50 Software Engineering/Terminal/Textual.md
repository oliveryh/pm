# Rich/Textual in the Browser

- It appears that one of the main selling points of Textual is that it will eventually run in the browser.
- Here is an [example of Textual being used in conjunction with PyScript](https://jeff.glass/post/pyscript-rich/)

# Documentation

- [Textual tests](https://github.com/Textualize/textual/tree/main/tests)
# Blog Posts

- [Reactivity - Textual](https://textual.textualize.io/guide/reactivity/)
- [Testing - Textual](https://textual.textualize.io/guide/testing/)
- [Workers - Textual](https://textual.textualize.io/guide/workers/)

# Graphs / Plotting

https://github.com/Textualize/textual/discussions/198
https://github.com/Textualize/rich/discussions/1002
https://github.com/mkaz/termgraph

It appears that [plotext](https://github.com/piccolomo/plotext/blob/master/readme/environments.md#rich) added some basic integration with rich last year.

# Modals

- [Cascading Menu & Modal Dialog examples · Textualize/textual · Discussion #1713 · GitHub](https://github.com/Textualize/textual/discussions/1713)

# Rendering Plotext in Textual

Textual has a strong dependency on Rich. In fact, if any class has is of a `Renderable` type, then it can be displayed in textual. Since `plotext` can be supported in `rich` then this means it should be viewable in `textual`.

[[Will McGugan]] left a comment describing how this might be implemented https://github.com/piccolomo/plotext/issues/26#issuecomment-875324854. 

# CSS

- CSS can be live edited using the `--dev` argument when running textual run ([Devtools - Textual](https://textual.textualize.io/guide/devtools/#live-editing))

# Components

https://github.com/mitosch/textual-select

# Data Flow

[Widgets - Textual > Data Flow](https://textual.textualize.io/guide/widgets/#data-flow)

> We want to ensure that our widgets are re-usable, which we can do by following the guideline of "attributes down, messages up". This means that a widget can update a child by setting its attributes or calling its methods, but widgets should only ever send [messages](https://textual.textualize.io/guide/events/) to their _parent_ (or other ancestors).

There are 3 principles that I like to follow from this guidance
- If you want to make a change to a child (or ancestor), then you can directly amend it's attributes using something like `self.query_one(WidgetName).attribute_name = new_value`
- If you want to change a parent, then you might send a message that's handled by the parent
- If you want to change a parent, then you would send a message to the parent which then changes the attributes of the necessary child widget

# Textual Web

## Making it work for Mobile

- Copy the following files and add them to a folder on your server
	- `index.html`
	- `xterm.css`
	- `textual.js`
- Edit the index to point to the files served by the server
- Edit the `textual.js` to add `readonly='readonly'` to the xterm text area
- Get rid of the sideways scroll using `html { overflow-x: hidden; }`
- And finally, add the following meta tag to the head in the index file `<meta name="viewport" content="width=device-width, height=device-height,  initial-scale=1.0, user-scalable=no;user-scalable=0;"/>`