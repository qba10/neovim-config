set tabstop=8       " number of visual spaces per TAB
set softtabstop=8   " number of spaces in tab when editing
set shiftwidth=8    " number of spaces to use for autoindent
"set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
let &colorcolumn="80,".join(range(119,999),",")

" set Ag as the grep command
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
" }}} Search
"
let NERDTreeShowBookmarks=1
