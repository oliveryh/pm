# Make Atomic Git Commits

![rw-book-cover](https://www.aleksandrhovhannisyan.com/assets/images/SgbQK4wnMv-1600.jpeg)

## Metadata

- Author: [[Aleksandr Hovhannisyan]]
- Full Title: Make Atomic Git Commits
- Category: #articles
- Summary: It can be tempting to lump unrelated code changes into a single commit, but this makes it difficult to debug and time travel in Git. Prefer to write atomic commits that have a single responsibility.
- URL: https://www.aleksandrhovhannisyan.com/blog/atomic-git-commits/

## Full Document

[[Full Document Contents/Articles/Make Atomic Git Commits.md|See full document content →]]

## Highlights

- When developers discuss clean code, they often mention the **single responsibility principle**, which states that a unit of code (like a function or "component") should concern itself with doing only one task. This makes that unit of code easier to test and reuse. ([View Highlight](https://read.readwise.io/read/01grnhcbt86pv2jjdwptf0mfr8))
- We can easily extend this principle to Git, favoring **atomic commits** that are responsible for documenting a single, complete unit of work. This doesn't mean that each commit needs to be limited to a single file or only a few lines of code (but if that's the case, then so be it). Rather, it means that you should be able to describe your changes with a single, meaningful message without trying to tack on additional information about some unrelated work that you did. ([View Highlight](https://read.readwise.io/read/01grnhd0fs2aym66ebqysx2ndh))
- Another way to define an atomic commit is one that can be reverted without any unwanted side effects or regressions, aside from what you'd expect based on its message. If a commit is removed from your git commit history but doing so removes other legitimate changes, then that commit wasn't atomic. ([View Highlight](https://read.readwise.io/read/01grnhdqr169sbqgthrz7387re))
