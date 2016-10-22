
" Disable vi compatibility
set nocompatible

let g:pathogen_disabled = []

" for some reason the csscolor plugin is very slow when run on the terminal
" but not in GVim, so disable it if no GUI is running
if !has( 'gui_running' )
	call add( g:pathogen_disabled, 'css-color' )
endif

call pathogen#infect() 

set tabstop=4
set shiftwidth=4
set expandtab
set copyindent
set preserveindent
set softtabstop=0

" Visual goodies
set backspace=2
set number " Line numbers

" Hide some command line info
set noruler
set noshowmode

set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set sidescrolloff=10 " Keep 5 lines at the size
set showmatch " Show matching brackets
syntax enable " Enable syntax highlighting without overriding color preferences

set t_Co=256

if has('gui_running')
	set background=light
else
	set background=dark
endif

"colorscheme solarized
colorscheme wombat256

set hidden " Hide buffers instead of closing them

" Plugins
filetype plugin indent on

" Safe work
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp " This directory is used to store temporal/swap files.

set viminfo='10,\"100,:20,%,n~/.vim/viminfo
if has( 'autocmd' )
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

" Keyboard mapping
map <C-x> :tabclose<CR>
map <C-n> :tabnew<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>

" Plugin keyboard mapping
map <silent> <F5> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
map <C-o> :CtrlP<CR>

set tags=~/project_tags

set wildignore+=*/tmp/*,*/temp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|bower_components$\|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links'
  \ }

" Show status line
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline_powerline_fonts = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['c'] }
let g:syntastic_javascript_checkers = ['eslint']

set listchars=tab:>-,eol:$
set nolist

au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.nasm set filetype=nasm
au BufRead,BufNewFile *.es6 set filetype=javascript

let NERDTreeIgnore = ['\.lo$', '\.o$', '\.pyc']

