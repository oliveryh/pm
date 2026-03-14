# Resources

- [More Instantly Better Vim](https://www.youtube.com/watch?v=aHm36-na4-4)
- [vim + tmux](https://www.youtube.com/watch?v=5r6yzFEXajQ)
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
- [Ultimate vimrc](https://github.com/amix/vimrc)
- [A Vim Guide for Advanced Users](https://thevaluable.dev/vim-advanced/)
- [Moving Blazingly Fast With The Core Vim Motions | Barbarian Meets Coding](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/)

# Commands

## Refactoring

**Clear trailing whitespace**
`:%s/\\s\\+$//e'`

**Convert two space tabs to four space tabs**
`:set ts=2 sts=2 noet | retab! | set ts=4 sts=4 et | retab!`

**Convert pipes to new lines**
`:%s/|/\\\r\t\|/cg`

# Features

## Folds

### Shortcuts

```
zx - Action x on the fold at cursor
zX - Action x on all folds
o/O - Open
c/C - Close
r/R - Decrease fold level by one / to 0
m/M - Increase fold level by one / to max
```
