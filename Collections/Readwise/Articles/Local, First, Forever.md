# Local, First, Forever

![rw-book-cover](https://dynogee.com/gen?id=24m2qx9uethuw6p&title=Local%2C+first%2C+forever)

## Metadata
- Author: [[Nikita Prokopov]]
- Full Title: Local, First, Forever
- Category: #articles
- Summary: The text discusses the concept of "local-first software," which prioritizes keeping data on users' devices while still allowing occasional internet syncing. It highlights the importance of using common file-syncing services like Dropbox to ensure data synchronization across devices, even in the event of company shutdowns. The text also introduces strategies like CRDTs and different syncing approaches to enable conflict-free data synchronization for local-first applications.
- URL: https://tonsky.me/blog/crdt-filesync/

## Full Document
[[Full Document Contents/Articles/Local, First, Forever.md|See full document content →]]

## Highlights
- Normally, it would’ve been a problem. But it’s not if you are using CRDT!
  > CRDT is a collection of data types that all share a very nice property: they can always be merged. It’s not always the perfect merge, and not everything can be made into a CRDT, but IF you can put your data into a CRDT, you can be sure: all merges will go without conflicts. ([View Highlight](https://read.readwise.io/read/01j1mbjrmks2smys6xxbw2v5y2))
