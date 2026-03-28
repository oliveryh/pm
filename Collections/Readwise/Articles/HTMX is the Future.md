# HTMX is the Future

![rw-book-cover](https://news.ycombinator.com/favicon.ico)

## Metadata
- Author: [[quii.dev]]
- Full Title: HTMX is the Future
- Category: #articles
- Summary: Chris James, London - Software Engineer
- URL: https://quii.dev/HTMX_is_the_Future

## Full Document
[[Full Document Contents/Articles/HTMX is the Future.md|See full document content →]]

## Highlights
- The costs of SPA
  SPAs have allowed engineers to create some great web applications, but they come with a cost:
  • Hugely increased complexity both in terms of architecture and developer experience. You have to spend considerable time learning about frameworks.
  • Tooling is an ever-shifting landscape in terms of building and packaging code.
  • Managing state on both the client and server
  • Frameworks, on top of libraries, on top of other libraries, on top of polyfills. [React even recommend using a framework on top of their tech](https://react.dev):
  > React is a library. It lets you put components together, but it doesn’t prescribe how to do routing and data fetching. To build an entire app with React, we recommend a full-stack React framework.
  • By their nature, a fat client requires the client to execute a lot of JavaScript. If you have modern hardware, this is fine, but these applications will be unusable & slow for those on older hardware or in locations with slow and unreliable internet connections.
  • It is very easy to make an SPA incorrectly, where you need to use the right approach with hooks to avoid ending up with abysmal client-side performance.
  • Some SPA implementations of SPA throw away progressive enhancement (a notable and noble exception is [Remix](https://remix.run)). Therefore, you *must* have JavaScript turned on for most SPAs.
  • If you wish to use something other than JavaScript or TypeScript, you must traverse the treacherous road of transpilation.
  • It has created backend and frontend silos in many companies, carrying high coordination costs. ([View Highlight](https://read.readwise.io/read/01h2tnsjkd3wfwg8f81z4hjv3g))
- More resilient
  As described earlier, using the hypermedia approach, making a web application that works without JavaScript is relatively simple.
  It's also important to remember that the browser is an **untrusted environment**, so when you build a SPA, you have to work extremely defensively. You have to implement lots of business logic client side; but because of the architecture, this same logic needs to be replicated on the server too.
  For instance, let's say we wanted a rule saying you cannot edit a to-do if it is marked as done. In an SPA world, I'd get raw JSON, and I'd have to have business logic to determine whether to render the edit button on the client code somewhere. However, if we wanted to ensure a user couldn't circumvent this, I'd have to have this same protection on the server. This sounds low-stakes and simple, but this complexity adds up, and the chance of misalignment increases.
  With a hypermedia approach, the browser is "dumb" and doesn't need to worry about this. As a developer, I can capture this rule in one place, the server. ([View Highlight](https://read.readwise.io/read/01h2tpj7ff0dzr4zstfs47cy0n))
- • The author of HTMX has written an excellent, [free book, explaining hypermedia](https://hypermedia.systems). It's an easy read and will challenge your beliefs on how to build web applications. If you've only ever created SPAs, this is an essential read.
  • [HTMX](https://htmx.org). The examples section, in particular, is very good in showing you what's possible. The essays are also grea ([View Highlight](https://read.readwise.io/read/01h2tpr2yk18genrf63gm27gf5))
