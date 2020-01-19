# VIm IDE

## What is it?

VIm configured to be used as an *Integrated Development Environment* (a.k.a. IDE)

## Feature

* File manager/explorer
* Jump to file/tab
* Syntax highlighting and validation
* Status bar with Git branch indication
* Modern Javascript (ES6) support
* Class outliner
* Git annotations
* Much more!

## Under the hood

Under the hood this is nothing more than VIm with a bunch of preconfigured plugins. The full list of plugins follows:

* CTRLp (fuzzy finder)
* NerdTree (file tree)
* Syntastic
* VIm airline
* YAJS
* VIm signify
* Tagbar
* TComment
* Colors solarized
* Surround
* CTRLsf
* Goyo

## Use

```sh
$ git clone git@github.com:santiagolizardo/vim-ide.git
$ git submodule update --init
$ cd vim-ide
$ ln -s .vimrc ~/.vimrc
$ ln -s .vim ~/.vim
```

