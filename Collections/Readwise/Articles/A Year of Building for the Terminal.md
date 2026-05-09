# A Year of Building for the Terminal

![rw-book-cover](https://raw.githubusercontent.com/Textualize/textual/main/imgs/textual.png)

## Metadata

- Author: [[Textual Documentation]]
- Full Title: A Year of Building for the Terminal
- Category: #articles
- Summary: Textual is a TUI framework for Python, inspired by modern web development.
- URL: https://textual.textualize.io/blog/2022/12/20/a-year-of-building-for-the-terminal/

## Full Document

[[Full Document Contents/Articles/A Year of Building for the Terminal.md|See full document content →]]

## Highlights

- I built a tool called [Dunk](https://github.com/darrenburns/dunk). It's a command line program which you can pipe your `git diff` output into, and it'll convert it into something which I find much more readable. ([View Highlight](https://read.readwise.io/read/01gna6hp5zapn02wjf92f9kq4x))
    - Note: It could be worth replacing my current git diff driver with this.
- Developer console
  When developing terminal based applications, performing simple debugging using `print` can be difficult, since the terminal is in application mode.
  A project I worked on earlier in the year to improve the situation was the Textual developer console, which you can launch with `textual console`. ([View Highlight](https://read.readwise.io/read/01gna70jeewb3ka7xj8nn53q66))
- was ([View Highlight](https://read.readwise.io/read/01gna704k6kz7fk821nypjtdm6))
- Then, by running a Textual application with the `--dev` flag, all standard output will be redirected to it. This means you can use the builtin `print` function and still immediately see the output. Textual itself also writes information to this console, giving insight into the messages that are flowing through an application. ([View Highlight](https://read.readwise.io/read/01gna70rad94xsn8xn8w6yy8zd))
