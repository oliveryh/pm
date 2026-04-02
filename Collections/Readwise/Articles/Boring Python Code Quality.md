# Boring Python: Code Quality

![rw-book-cover](https://rdl.ink/render/https%3A%2F%2Fwww.b-list.org%2Fweblog%2F2022%2Fdec%2F19%2Fboring-python-code-quality%2F)

## Metadata

- Author: [[b-list.org]]
- Full Title: Boring Python: Code Quality
- Category: #articles
- Summary: This is the second in a series of posts I intend to write about how to build, deploy, and manage Python applications in as boring a way as possible.
- URL: https://www.b-list.org/weblog/2022/dec/19/boring-python-code-quality/

## Full Document

[[Full Document Contents/Articles/Boring Python Code Quality.md|See full document content →]]

## Highlights

- If you followed the advice in the last section, you’ve already got a head start on consistency of formatting from your `.editorconfig` and pre-commit hooks handling things like indenting, newline styles, and so on, but now it’s time to get into Python-specific formatting. I recommend using two tools together: [Black](https://black.readthedocs.io/) and [isort](https://pycqa.github.io/isort/). ([View Highlight](https://read.readwise.io/read/01gp1qqmm6r21m89fmr3xk1986))
- For configuration, the only option I recommend setting for Black is the target Python version, which should match the version of Python you intend to deploy on (for libraries that target multiple Python versions it’s more complex, but for an application you intend to deploy on your own servers, you should be using one Python version and targeting it). For isort, I recommend setting the “profile” option to `"black"` to tell isort to match Black’s preferences. If it has trouble recognizing which modules are part of your codebase and which aren’t, consider setting `known_first_party` and/or `known_third_party` to help it out. ([View Highlight](https://read.readwise.io/read/01gp1qqep6788h317w5fqya70y))
- In both cases, I recommend putting the configuration in a top-level `pyproject.toml` file in your repository. In the case of Black this is the *only* supported configuration file, and most other tools support using `pyproject.toml` as a centralized configuration file now — there’s only one I’m going to recommend (flake8) that doesn’t. ([View Highlight](https://read.readwise.io/read/01gp1qr6ak89rmne2q34mszq9e))
- A massively oversimplified version of the differences between the two would be:
  • flake8 is generally faster and will raise fewer false positives, but checks/enforces fewer things.
  • Pylint is generally slower and will have more false positives, but checks/enforces a *lot* more things ([View Highlight](https://read.readwise.io/read/01gpjgkrhwc0sx7jtxsva13rj4))
- Two other things to be aware of about Pylint are that it requires *everything*, including all of your dependencies, to be importable during the run (in order to check for things like correct usage of imported modules/functions/classes), and that if you use a library or framework that does significant metaprogramming you’ll probably need a plugin to help Pylint understand that. For example, if you use Django you’ll pretty much always also use [pylint-django](https://pypi.org/project/pylint-django/).
  My advice is to pick and run at least one of flake8 or Pylint. If you choose Pylint and you already have a large existing codebase, turn on its various checks gradually; Pylint’s own documentation recommends and explains how to do this. A nice hybrid option is to run Pylint as part of your CI suite, and flake8 in pre-commit: Pylint [is kind of tricky to use from a pre-commit hook](https://pylint.pycqa.org/en/latest/user_guide/installation/pre-commit-integration.html) and can be slow, while flake8 [has an official pre-commit hook](https://flake8.pycqa.org/en/latest/user/using-hooks.html) and is speedy. ([View Highlight](https://read.readwise.io/read/01gpjgm2fws207pwvhdd1yr67s))
- Also, if you use flake8 in any capacity, I recommend including [the flake8-bugbear plugin](https://pypi.org/project/flake8-bugbear/), which adds a bunch of useful checks on top of the normal flake8 suite. ([View Highlight](https://read.readwise.io/read/01gpjgme43g370y11pr8t6k2nb))
