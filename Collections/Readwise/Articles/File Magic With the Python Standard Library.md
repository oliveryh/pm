# File Magic With the Python Standard Library

![rw-book-cover](https://raw.githubusercontent.com/Textualize/textual/main/imgs/textual.png)

## Metadata

- Author: [[Textual Documentation]]
- Full Title: File Magic With the Python Standard Library
- Category: #articles
- Summary: In this post, the author discusses the technical challenges they encountered while building an app called Toolong for viewing log files. They highlight two specific techniques used in the app: opening large files and scanning lines. The app is able to open large files quickly by only reading the portion of the file required for display, and it uses the mmap module from the Python standard library to efficiently scan for line breaks. The author also mentions that the app can tail files in real-time using the selectors module from the standard library. They conclude by mentioning that this project was an opportunity to improve Textual, a library they used for the app, and they invite readers to join the Discord server for further discussion.
- URL: https://textual.textualize.io/blog/2024/02/11/file-magic-with-the-python-standard-library/

## Full Document

[[Full Document Contents/Articles/File Magic With the Python Standard Library.md|See full document content →]]

## Highlights

- See [watcher.py](https://github.com/Textualize/toolong/blob/main/src/toolong/watcher.py) in Toolong, which runs a thread to monitors files for changes with a selector. ([View Highlight](https://read.readwise.io/read/01j1jdsqygwbfqyj4xtnan5k9a))
