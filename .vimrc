
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

" Set a color scheme only if the environment is capable of handle it
if &t_Co > 2 || has( 'gui_running' )
	colorscheme slate	
endif

set hidden " Hide buffers instead of closing them

" Plugins
filetype plugin indent on

" Safe work
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp " This directory is used to store temporal/swap files.

" Character encoding
set encoding=utf-8
set fileencoding=utf-8

" Search
set incsearch
set hlsearch
set ignorecase " Case insensitive by default
set smartcase " If there are caps, go case-sensitive

" Functions
let is_file_explorer_enabled = 0
function! ToggleFileExplorer()
	if g:is_file_explorer_enabled == 0
		NERDTree
	else
		NERDTreeClose
	endif
	let g:is_file_explorer_enabled = !g:is_file_explorer_enabled
endfunction

" Keyboard mappings
map <silent> <F2> :tabedit ~/.vim/cheatsheet.txt<CR>
map <silent> <F5> :call ToggleFileExplorer()<CR>

map <C-w> :tabclose<CR>
map <C-t> :tabnew<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>

