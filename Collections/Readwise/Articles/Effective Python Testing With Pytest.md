# Effective Python Testing With Pytest

![rw-book-cover](https://files.realpython.com/media/Intermediate-Advanced-PyTest-Features_Watermarked.43fb169e7121.jpg)

## Metadata

- Author: [[Dane Hillard]]
- Full Title: Effective Python Testing With Pytest
- Category: #articles
- Summary: In this tutorial, you'll learn how to take your testing to the next level with pytest. You'll cover intermediate and advanced pytest features such as fixtures, marks, parameters, and plugins. With pytest, you can make your test suites fast, effective, and less painful to maintain.
- URL: https://realpython.com/pytest-python-testing/#when-to-avoid-fixtures

## Full Document

[[Full Document Contents/Articles/Effective Python Testing With Pytest.md|See full document content →]]

## Highlights

- Note that each test is quite small and self-contained. This is common—you'll see long function names and not a lot going on within a function. This serves mainly to keep your tests isolated from each other, so if something breaks, you know exactly where the problem is. A nice side effect is that the labeling is much better in the output. ([View Highlight](https://read.readwise.io/read/01gwn4909jkqs56nd7zxrqft9n))
- With `unittest`, you might extract these dependencies into `.setUp()` and `.tearDown()` methods so that each test in the class can make use of them. Using these special methods is fine, but as your test classes get larger, you may inadvertently make the test's dependence entirely **implicit**. In other words, by looking at one of the many tests in isolation, you may not immediately see that it depends on something else. ([View Highlight](https://read.readwise.io/read/01gwn4afpwt1m6ev1jg4zkje5c))
- [`pytest-randomly`](https://github.com/pytest-dev/pytest-randomly) forces your tests to run in a random order. `pytest` always collects all the tests it can find before running them. `pytest-randomly` just shuffles that list of tests before execution.
  This is a great way to uncover tests that depend on running in a specific order, which means they have a **stateful dependency** on some other test. If you built your test suite from scratch in `pytest`, then this isn't very likely. It's more likely to happen in test suites that you migrate to `pytest`. ([View Highlight](https://read.readwise.io/read/01gwn4v4qk3bab9gexnx7d184c))
