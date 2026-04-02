# Queues Don't Fix Overload

![rw-book-cover](https://ferd.ca/static/img/sink1.png)

## Metadata

- Author: [[ferd.ca]]
- Full Title: Queues Don't Fix Overload
- Category: #articles
- Summary: The article argues that using queues to fix issues with slow apps and overload is a misuse of the tool. While queues can be effective during temporary overload, prolonged overload can overwhelm the system and cause it to crash. Instead, developers should pick between blocking input or shedding load during overload and properly identify bottlenecks and apply back-pressure mechanisms. Proper operational limits and idempotent APIs can make the system more reliable and easier to maintain. Misusing queues can lead to problems and worsen issues with system overload.
- URL: https://ferd.ca/queues-don-t-fix-overload.html

## Full Document

[[Full Document Contents/Articles/Queues Don't Fix Overload.md|See full document content →]]

## Highlights

- So what do you need? You'll need to pick *what has to give* whenever stuff goes bad. You'll have to pick between blocking on input (back-pressure), or dropping data on the floor (load-shedding). And that happens all the time in the real world, we just don't want to do it as developers, as if it were an admission of failure. ([View Highlight](https://read.readwise.io/read/01hnjewqyas15g33jq795pbzge))
- Step 1. Identify the bottleneck. Step 2: ask the bottleneck for permission to pile more data in: ([View Highlight](https://read.readwise.io/read/01hnjesfe0xmv3bw6m1dpqm3g1))
- When people blindly apply a queue as a buffer, all they're doing is creating a bigger buffer to accumulate data that is in-flight, only to lose it sooner or later. You're making failures more rare, but you're making their magnitude worse. ([View Highlight](https://read.readwise.io/read/01hnjes7x9wcbamg6j50pfhaqz))
