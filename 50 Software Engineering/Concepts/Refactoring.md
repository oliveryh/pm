# General Tips

Once, Twice, Refactor. Focus on OOP and Inheritance to ensure that code is resuable and concise
- Think carefully before naming data structures, variables, and functions to ensure they follow an overall pattern and architecture
- If something is convoluted to explain, refactor code until it is easy to explain
- Separate configuration from implementation
- Use a linter to account for basic syntax requirements

# Finding Duplicated Code

There is a javascript package called [js-inspect](https://www.npmjs.com/package/jsinspect) which detects similar code structures. We can use it in our javascript projects.

Be sure to run it in your source folder so as to not include the `node_modules` directory.

[Symilar - Pylint 2.16.0-dev documentation](https://pylint.pycqa.org/en/latest/symilar.html) is another option, shipped with `pylint`

# Structured AST/CST Refactoring

- [Green Tree Snakes - the missing Python AST docs — Green Tree Snakes 1.0 documentation](https://greentreesnakes.readthedocs.io/en/latest/)
- Related to [[Visualisation Ideas#Python Code AST Visualisation]]
- [ast_tools (leonardt) (13 ★)](https://github.com/leonardt/ast_tools) - Toolbox for working with the Python AST
- [autoflake (PyCQA) (628 ★)](https://github.com/PyCQA/autoflake) - Removes unused imports and unused variables as reported by pyflakes
