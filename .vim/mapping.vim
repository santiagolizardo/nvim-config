
" Disable arrow keys in normal and insert modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Map tab commands to shortcuts
map <C-x> :tabclose<CR>
map <C-n> :tabnew<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>

" Bind some plugin commands to shortcuts
nmap <silent> <F5> :NERDTreeToggle<CR>
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <C-o>f :CtrlP<CR>
nmap <silent> <C-o>b :CtrlPBuffer<CR>

