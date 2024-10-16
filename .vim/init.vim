
let $NVIM_CONFIG_DIR=stdpath('config')

" Disable VI compatibility
set nocompatible

source $NVIM_CONFIG_DIR/functions.vim

" Fix to issue of Vim starting in replace mode in Windows
" See: https://superuser.com/questions/1284561/why-is-vim-starting-in-replace-mode

if IsWSL()
	set t_u7=
	set ambw=double
endif
set t_Co=256

" Copy indent from current line to new line
set autoindent

" Number of spaces that a TAB counts for
set tabstop=4
set shiftwidth=4
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

" Allow to use backspace everywhere
set backspace=indent,eol,start

" Show line numbers
set number
" Do not show mode in the last line (already show in vim airline)
set noshowmode

" Minimum number of lines to show before/after the cursor vertically
set scrolloff=8
" Minimum number of columns to show before/after the cursor horizontally
set sidescrolloff=5
" Highlight matching brackets
set showmatch

set cursorcolumn
set cursorline

"==================
" Syntax and Colors
"==================

" Enable syntax highlighting without overriding color preferences
syntax enable

set termguicolors
set background=dark
colorscheme gruvbox

" Hide buffers instead of closing them
set hidden

" Enables detection, plugin and indent when loading new files
filetype plugin indent on

" Enable backups if backup directory exists
if isdirectory($HOME."/.vim/backup")
	set writebackup
	set backup
	set backupdir=~/.vim/backup
endif

" This directory is used to store temporal/swap files.
set directory=~/.vim/temp

set viminfo='10,\"100,:20,%,n~/.vim/viminfo

if has( 'autocmd' )
	autocmd BufReadPost *
		\ if line( "'\"" ) > 1 && line( "'\"" ) <= line( '$' ) |
		\ exe "normal! g'\"" |
		\ endif
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif

" Character encoding
set encoding=utf-8
set fileencoding=utf-8

"================
" Search Settings
"================
set incsearch " Moves cursor to search as one types
set hlsearch " Highlight search matches
set ignorecase " Make search case insensitive
set smartcase " If there are caps, go case-sensitive

source $NVIM_CONFIG_DIR/mapping.vim

set wildignore+=*/tmp/*,*/temp/*,*.so,*.swp,*.zip,*.pyc|     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe|  " Windows

" Always show status line
set laststatus=2

set statusline+=%#warningmsg#
if exists('SyntasticStatuslineFlag')
	set statusline+=%{SyntasticStatuslineFlag()}
endif
set statusline+=%*

" Determines how to render tabs and end of lines
set listchars=tab:>-,eol:$
set nolist " Do not show special chars

au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.nasm set filetype=nasm
au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile *.plt set filetype=gnuplot
au BufRead,BufNewFile *.gv set filetype=dot
au BufNewFile,BufRead Jenkinsfile setf groovy
au BufNewFile,BufRead *.jinja set ft=jinja
autocmd! BufNewFile,BufRead *.vs,*.fs,*.glsl set ft=glsl

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:ctrlp_custom_ignore = {
	\ 'dir': '\.git$\|\.hg$\|\.svn$\|bower_components$\|node_modules$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links'
	\ }

let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:NERDTreeIgnore = ['\.lo$', '\.o$', '\.pyc', '\.map', '\.git']
let g:NERDTreeShowHidden = 1

let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

if &diff
    " diff mode
    set diffopt+=iwhite
endif

augroup VimrcHooks | au!
augroup END
au VimrcHooks BufWritePre * let &backupext = '~' . localtime()
au VimrcHooks VimLeave * call <SID>DeleteOldBackups()

