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

* [CTRLp](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy finder
* [Gutentags](https://github.com/ludovicchabant/vim-gutentags): Outline
* [NerdCommenter](https://github.com/preservim/nerdcommenter)
* [NerdTree](https://github.com/preservim/nerdtree): File tree
* [ALE](https://github.com/dense-analysis/ale.git): Syntax check
* [VIm airline](https://github.com/vim-airline/vim-airline): Status/tabline
* [VIm signify](https://github.com/mhinz/vim-signify): Version control annotations
* [Tagbar](https://github.com/preservim/tagbar): Symbol navigation
* [CTRLsf](https://github.com/dyng/ctrlsf.vim) (code search
* [YAJS](https://github.com/othree/yajs.vim): Javascript syntax
* [vim-glsl](https://github.com/tikhomirov/vim-glsl): GLSL syntax

