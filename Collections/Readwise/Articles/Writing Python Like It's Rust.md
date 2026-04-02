# Writing Python Like It's Rust

![rw-book-cover](https://news.ycombinator.com/favicon.ico)

## Metadata

- Author: [[Kobzol's blog]]
- Full Title: Writing Python Like It's Rust
- Category: #articles
- Summary: I started programming in Rust several years ago, and it has gradually changed the way I design programs in other programming languages, most notably in Python. Before I started using Rust, I was usually writing Python code in a very dynamic and type-loose way, without type hints, passing and returning dictionaries everywhere, and occasionally falling back to “stringly-typed” interfaces. However, after experiencing the strictness of the Rust type system, and noticing all the problems that it prevents “by construction”, I suddenly became quite anxious whenever I got back to Python and wasn’t provided with the same guarantees.
- URL: https://kobzol.github.io/rust/python/2023/05/20/writing-python-like-its-rust.html

## Full Document

[[Full Document Contents/Articles/Writing Python Like It's Rust.md|See full document content →]]

## Highlights

- “soundness” – the concept of designing APIs that are very hard or outright impossible to misuse and thus prevent undefined behaviour and various bugs. ([View Highlight](https://read.readwise.io/read/01h17ek5m408qtwy8yswmdzsw3))
- Sadly, here we have to (or rather, should) include the annoying `assert False` branches so that the function crashes when it receives unexpected data. In Rust, this would be a compile-time error instead.

  > Note: Several people on Reddit have reminded me that `assert False` is actually optimized away completely in optimized build (`python -O ...`). Thus it would be safer to raise an exception directly. There is also [`typing.assert_never`](https://docs.python.org/3/library/typing.html#typing.assert_never) from Python 3.11, which explicitly tells a type checker that falling to this branch should be a “compile-time” error. ([View Highlight](https://read.readwise.io/read/01h17f6g53vrg7qm1ymzqze6d0))
