# Resources

- [Five Life Changing Git Aliases](https://medium.com/the-lazy-developer/five-life-changing-git-aliases-e4211c090017)
- [A Git command to jump from a commit SHA to the PR on GitHub | tekin.co.uk](https://tekin.co.uk/2020/06/jump-from-a-git-commit-to-the-pr-in-one-command)
- [grep-prs (The-Compiler) (2 ★)](https://github.com/The-Compiler/grep-prs) - Search a pattern in all open PRs in a project. Useful to find PRs which use an API you'd like to change/deprecate.
- [git - GitHub pull request id from commit hash - Stack Overflow](https://stackoverflow.com/questions/45635224/github-pull-request-id-from-commit-hash)
- [The guide to Git I never had. | Glasskube.dev](https://glasskube.dev/guides/git/)
- [GitButler](https://gitbutler.com/) looks like a good productivity boost for work
- https://commitlint.js.org/

# Release Management

[Steps to Software Release Management for Agile Teams](https://www.clearvision-cm.com/blog/8-steps-to-software-release-management-for-agile-teams/)

# Aliases

**Print log in graph**

`git log --graph --abbrev-commit --decorate --date=relative --all`

# Commit Messages
## Resources

- [My favourite Git commit | dhwthompson.com](https://dhwthompson.com/2019/my-favourite-git-commit)
- [The Perfect Commit](https://simonwillison.net/2022/Oct/29/the-perfect-commit)
- [Writing commit messages](https://www.chiark.greenend.org.uk/~sgtatham/quasiblog/commit-messages)

## Gitmoji Support

[https://github.com/dannyfritz/commit-message-emoji](https://github.com/dannyfritz/commit-message-emoji)
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
- [Conventional Commit Guidance](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13)
- [Emoji for Conventional Commits · GitHub](https://gist.github.com/parmentf/359667bf23e08a1bd8241fbf47ecdef0)

| Type     | Emoji | code                    |
|:-------- |:----- |:----------------------- |
| feat     | ✨    | `:sparkles:`            |
| fix      | 🐛    | `:bug:`                 |
| docs     | 📚    | `:books:`               |
| style    | 🎨    | `:art:`                 |
| refactor | 🔨    | `:hammer:`              |
| perf     | 🚀    | `:rocket:`              |
| test     | 🚨    | `:rotating_light:`      |
| build    | 📦    | `:package:`             |
| ci       | 👷🏻  | `:construction_worker:` | 
| chore    | 🔧    | `:wrench:`              |

## Semantic Commit Messages

https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716

# Commands

## Grep

**Grep for sourcecode across all committed files** [[1]](https://stackoverflow.com/questions/2928584/how-to-grep-search-committed-code-in-the-git-history)

`git grep <regexp> $(git rev-list --all)`

## Diff

**Ignore trailing whitespace**

`git diff --ignore-space-at-eol`

**Ignore all whitespace**

`git diff -w`

**See staged diff**

`git diff --staged`

**Diff when a fixup and rebase have been combined**

`git range-diff origin/main <hash before change> <hash after change>`

## Checkout

**Revert a single file to the remote version**

`git checkout HEAD file.txt`

## Branching

**Squash all commits in a branch (before pull request)**
```
git checkout yourBranch
git reset $(git merge-base develop yourBranch)
git add -A
git commit -m "one commit on yourBranch"
```

# Submodule

A [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) can be added to Git as a means of including a dependency for example.

**Add a particular branch of a submodule to your repository** ([Source)](https://stackoverflow.com/questions/1777854/how-can-i-specify-a-branch-tag-when-adding-a-git-submodule)

1. Run `git submodule add <git clone url>`
2. Open the file `.gitmodules` that appears
3. Add the line `branch = <branch name>` to the bottom of the submodule definition
4. Run `git submodule update --remote`

## Refresh a submodule

# Tools

- [git-autofixup (torbiak) (97 ★)](https://github.com/torbiak/git-autofixup) - create fixup commits for topic branches
- [git-mv-changes (MikhailGolubtsov) (56 ★)](https://github.com/MikhailGolubtsov/git-mv-changes) - A script allowing moving changes of particular files from one commit to another
- [delta (dandavison) (12.7k ★)](https://github.com/dandavison/delta) - A syntax-highlighting pager for git, diff, and grep output
- [gh-dash (dlvhdr) (631 ★)](https://github.com/dlvhdr/gh-dash) - gh cli extension to display a dashboard of PRs and issues - configurable with a beautiful UI.
- https://github.com/jesseduffield/lazygit
- [git-recent (paulirish) (908 ★)](https://github.com/paulirish/git-recent) - See your latest local git branches, formatted real fancy
- [~nhaehnle/diff-modulo-base - Diff modulo Base tool - sourcehut git](https://git.sr.ht/~nhaehnle/diff-modulo-base)
- [Super-charging 'git rebase' with 'git absorb'](https://andrewlock.net/super-charging-git-rebase-with-git-absorb/)

# Appendix

## Further Reading

- [https://stackoverflow.com/questions/2928584/how-to-grep-search-committed-code-in-the-git-history](https://stackoverflow.com/questions/2928584/how-to-grep-search-committed-code-in-the-git-history)
- https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716
