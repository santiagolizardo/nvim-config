# VIm IDE

## What is it?

VIm configured to be used as an *Integrated Development Environment* (a.k.a. IDE)

## Features

* File manager/explorer
* Jump to file/tab
* Jump to symbol (method, class, function)
* Syntax highlighting and validation (linting)
* Status bar with Git branch indication
* Class outliner
* Git annotations
* Modern Javascript (ES6) support
* Symbols (class, class members, functions, etc) outliner 
* Much more!

## How to use

```sh
git clone --recurse-submodules git@github.com:santiagolizardo/vim-ide.git
ln -sf $PWD/vim-ide/.vim ~/.vim
ln -sf $PWD/vim-ide/.vimrc ~/.vimrc
```

## Under the hood

Under the hood this is nothing more than VIm with a bunch of preconfigured plugins. The full list of plugins follows:

* CTRLp (fuzzy finder)
* Gutentags (ctags)
* NerdCommenter
* NerdTree (file tree)
* Syntastic (syntac check)
* VIm airline
* VIm signify (version control in status bar)
* Tagbar (symbol navigation)
* Surround (character pair handling)
* CTRLsf (code search)
* YAJS

