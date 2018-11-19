"toogle white space
nnoremap <F3> :set list!<CR>
inoremap <F3> <C-o>:set list!<CR>
cnoremap <F3> <C-c>:set list!<CR>

nmap <localleader>e :NERDTreeToggle<CR>

" better ESC
inoremap jj <esc>

tnoremap <Esc> <C-\><C-n>

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
nmap <localleader>c :call NewTerminal()<CR>
nmap <localleader>d :call NewDoubleTerminal()<CR>

" change default copy paste register
nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
vnoremap p "+p
nnoremap d "+d
vnoremap d "+d

