# Observable 2.0

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/static/images/article1.be68295a7e40.png)

## Metadata

- Author: [[Observable]]
- Full Title: Observable 2.0
- Category: #articles
- Summary: Observable 2.0 is an open-source static site generator that aims to help teams communicate more effectively with data. It provides a better developer workflow by allowing developers to use their preferred text editor, source control, and code review system. The platform also focuses on delivering a better user experience with beautiful, customizable pages and a lightweight Markdown syntax. Additionally, Observable Framework solves the "last mile" problem of data apps by precomputing data and running data loaders on build time, resulting in fast-loading dashboards. With Framework, developers can build better data apps, dashboards, and reports while leveraging JavaScript for interactive graphics.
- URL: https://observablehq.com/blog/observable-2-0

## Full Document

[[Full Document Contents/Articles/Observable 2.0.md|See full document content →]]

## Highlights

- Most importantly, Framework's data architecture practically forces your app to be *fast* because data is precomputed. Performance is critical for dashboards: users don't like to wait, and dashboards only create value if users look at them. Slow dashboards waste time. (And you certainly don't want your database and dashboard falling over under load!) ([View Highlight](https://read.readwise.io/read/01hqdtt7vmt800cs6686x7d5gb))
- Framework's data loaders solve this "last mile" problem by computing static data snapshots at build time. These snapshots can be highly-optimized (and aggregated and anonymized), minimizing the data you send to the client. And since a data loader is just a fancy way of generating a file on-demand (with clever caching and routing), loaders can be written in any language and use any library. This flexibility is not unlike [CGI](https://en.wikipedia.org/wiki/Common_Gateway_Interface) from 30 years ago, and [Unix pipes](https://en.wikipedia.org/wiki/Pipeline_(Unix)). And since data loaders run on your servers, viewers don't need direct access to the underlying data sources, and your dashboards are more secure and robust. ([View Highlight](https://read.readwise.io/read/01hqdtwc9553eqdyvteg785gps))
