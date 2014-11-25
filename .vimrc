
" Disable vi compatibility
set nocompatible

call pathogen#infect() 

" Visual goodies
set number " Line numbers
set ruler
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set sidescrolloff=10 " Keep 5 lines at the size
set showmatch " Show matching brackets
syntax on " Enable syntax highlighting

set t_Co=256
let colorSchemeName="wombat256"

" Set a color scheme only if the environment is capable of handle it
if( &t_Co > 2 || has( 'gui_running' ) ) && filereadable( expand( "$HOME/.vim/colors/" . colorSchemeName . ".vim" ) )
	colorscheme wombat256 
endif

set hidden " Hide buffers instead of closing them

" Plugins
filetype plugin indent on

" Safe work
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp " This directory is used to store temporal/swap files.

set viminfo='10,\"100,:20,%,n~/.vim/viminfo
if 1 || has( 'autocmd' )
	autocmd BufReadPost *
		\ if line( "'\"" ) > 1 && line( "'\"" ) <= line( '$' ) |
			\ exe "normal! g'\"" |
		\ endif
endif

" Character encoding
set encoding=utf-8
set fileencoding=utf-8

" Search
set incsearch
set hlsearch
set ignorecase " Case insensitive by default
set smartcase " If there are caps, go case-sensitive

" Keyboard mappings
if 0
	map <up> <nop>
	map <down> <nop>
	map <left> <nop>
	map <right> <nop>
	imap <up> <nop>
	imap <down> <nop>
	imap <left> <nop>
	imap <right> <nop>
endif

map <silent> <F5> :NERDTreeToggle<CR>

map <C-o> :CtrlP<CR>

map <C-x> :tabclose<CR>
map <C-n> :tabnew<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>

