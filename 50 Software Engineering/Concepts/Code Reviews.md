# Writing nice Code Reviews [^code-review]

- **Review your own code first**: Imagine reading your code for the first time and check for simple mistakes and code that isn't obvious to someone else
- **Write a changelist**: A change list should contain what the change achieves, why you're making it, and the context required
- **Code review happens after CI**: Continuous Integration (CI) should be happening in your software workflow. Code reviews should happen after all the tests are passing
- When your reviewer expresses confusion about how the code works, the solution isn't to explain it to that one person. You need to explain it to \*everyone
- **Separate functional changes**: Sometimes auto-formatters create a lot of noice and hide functional changes. Separate these. If you need to combine functional changes and formatting in a PR, do it in a few different commits:
	1. Add tests to exercise the existing behavior (if they're not already there).
	2. Refactor the production code while holding the test code constant.
	3. Change behavior in the production code and update the tests to match Artfully solicit missing information

# Conventional Comments

- [Conventional Comments](https://conventionalcomments.org/)
- [GitHub Conventional Comments (instructions to install in comment below code) · GitHub](https://gist.github.com/ifyoumakeit/4148a8c3e61b7868935651272c03f793)
- [angular/CONTRIBUTING.md at main · angular/angular · GitHub](https://github.com/angular/angular/blob/main/CONTRIBUTING.md#-commit-message-format)

# Further Reading

- https://chris.beams.io/posts/git-commit/
- https://blog.codinghorror.com/curlys-law-do-one-thing/
- https://blog.jez.io/cli-code-review/?utm_source=pocket_mylist

[^code-review]: https://mtlynch.io/code-review-love/
