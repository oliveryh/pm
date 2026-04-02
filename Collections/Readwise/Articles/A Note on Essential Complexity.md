# A Note on Essential Complexity

![rw-book-cover](https://news.ycombinator.com/favicon.ico)

## Metadata

- Author: [[Facundo Olano]]
- Full Title: A Note on Essential Complexity
- Category: #articles
- Summary: Software engineers have various responsibilities, including writing code, managing complexity, and delighting users. Complexity in software can be essential or accidental, with the goal of minimizing complexity overall. Engineers can challenge traditional notions and work towards simplifying systems and organizations.
- URL: https://olano.dev/blog/a-note-on-essential-complexity

## Full Document

[[Full Document Contents/Articles/A Note on Essential Complexity.md|See full document content →]]

## Highlights

- The *urtext* of the software complexity discussion is Fred Brooks’s [*No Silver Bullet*](https://worrydream.com/refs/Brooks_1986_-_No_Silver_Bullet.pdf). Brooks distinguishes between essence and accident in software, posing that complexity is an essential difficulty of software systems —one of the things currently bounding our productivity. In [*Out of the Tar Pit*](https://curtclifton.net/papers/MoseleyMarks06a.pdf), Moseley and Marks build on Brooks’s ideas, defining the better-known (and more tractable) types of complexity:
  • **Essential Complexity** is inherent in, and the essence of, the *problem* (as seen by the *users*).
  • **Accidental Complexity** is all the rest —complexity with which the development team would not have to deal in the ideal world (e.g. complexity arising from performance issues and from suboptimal language and infrastructure). ([View Highlight](https://read.readwise.io/read/01j1jctgj6sbhysb57q1jtk2z0))
- In general, given a complex component of a software system (or an organization), it can happen that:
  • The complexity is accidental, so we can remove it.
  • The complexity is essential and we need to keep it.
  • The complexity is essential but we could remove it by redefining the problem specification.
  • The knowledge to tell whether something is essential or not is lost, the customer or the product owner can’t tell, or there isn’t such an authority to make the call.
  I frequently found the latter situation when working with legacy software, where the only specification is the system itself —bugs and unknowns included— and any observable feature, a *de facto* functional requirement, essential to the problem. The conservative approach to maintaining such systems is limited to internal refactors; a more disruptive reduce-complexity-at-all-costs attitude would assume that anything is up for removal until proven otherwise. In [*Kill It with Fire*](https://nostarch.com/kill-it-fire), Marianne Bellotti describes resilience engineering along those lines: ([View Highlight](https://read.readwise.io/read/01j1jd574bwnshet900wcp9cxa))
