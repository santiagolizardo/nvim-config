
" Disable arrow keys in normal and insert modes
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Bind some plugin commands to shortcuts
nmap <silent> <F5> :NERDTreeToggle<CR>
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <C-o>f :CtrlP<CR>
nmap <silent> <C-o>b :CtrlPBuffer<CR>

