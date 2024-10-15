# Neovim configuration files 

Neovim configured to be used as programming editor. 

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
git clone --recurse-submodules git@github.com:santiagolizardo/nvim-config.git
make links
```

## Under the hood

Under the hood this is nothing more than VIm with a bunch of preconfigured plugins. The full list of plugins follows:

* [CTRLp](https://github.com/ctrlpvim/ctrlp.vim) (fuzzy finder)
* [Gutentags](https://github.com/ludovicchabant/vim-gutentags) (ctags)
* [NerdCommenter](https://github.com/preservim/nerdcommenter)
* [NerdTree](https://github.com/preservim/nerdtree) (file tree)
* [ALE](https://github.com/dense-analysis/ale.git) (syntax check)
* VIm airline
* VIm signify (version control in status bar)
* Tagbar (symbol navigation)
* CTRLsf (code search)
* YAJS
* vim-glsl

