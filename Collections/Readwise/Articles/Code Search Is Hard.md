# Code Search Is Hard

![rw-book-cover](https://blog.val.town/blog-placeholder.png)

## Metadata

- Author: [[Tom MacWright]]
- Full Title: Code Search Is Hard
- Category: #articles
- Document Tags: [[software engineering]]
- Summary: Improving code search at Val Town is a top priority due to current limitations in search functionality. Mainstream search solutions are not well-suited for code searches, leading to challenges in finding a scalable and effective solution. Experimenting with pg_trgrm for trigram search in Postgres shows promise but presents difficulty in achieving desired search ranking.
- URL: https://blog.val.town/blog/search-notes/

## Full Document

[[Full Document Contents/Articles/Code Search Is Hard.md|See full document content →]]

## Highlights

- **Stemming**: this mostly [reverses conjugation](https://en.wikipedia.org/wiki/Grammatical_conjugation), turning a word like "running" into "run" before it is added to the index, and doing the same for search queries, so that you can search for "runs" and get a search result for a document with the term "running." ([View Highlight](https://read.readwise.io/read/01hzqvqe38w6pt6d23ambcjvp8))
