"toogle white space
nnoremap <F3> :set list!<CR>
inoremap <F3> <C-o>:set list!<CR>
cnoremap <F3> <C-c>:set list!<CR>

nmap <localleader>e :NERDTreeToggle<CR>

" better ESC
inoremap jj <esc>

" fast save and close
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR>

" insert blank line before current line without leaving insert mode
imap <leader>o <c-o><s-o>

nmap <Tab>  <C-w>w
nmap <S-Tab>  <C-w>W

nmap <Leader>l <Plug>(sidemenu)
xmap <Leader>l <Plug>(sidemenu-visual)

nnoremap <Leader>r :source $MYVIMRC<CR>

noremap <Leader>a :Ack <cword><cr>
