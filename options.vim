set tabstop=8       " number of visual spaces per TAB
set softtabstop=8   " number of spaces in tab when editing
set shiftwidth=8    " number of spaces to use for autoindent
"set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

set hidden
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
    set grepprg=ag\ --nogroup\ --column
    set grepformat=%f:%l:%c%m
endif
" }}} Search
"
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.o$', '\.cmd$']

let g:NERDTreeShowGitStatus = 1
let g:NERDTreeUpdateOnWrite = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeChDirMode = 2

set number relativenumber
let g:deoplete#enable_at_startup = 1

set list
set listchars=tab:›\ ,eol:¬,trail:⋅

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

function NewTerminal()
  set splitbelow
  set splitright
  10sp | terminal bash
endfunction

function NewDoubleTerminal()
  set splitbelow
  set splitright
  10sp | terminal bash
  vs |terminal bash
endfunction

autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect



" c-j c-k for moving in snippet
let g:snips_no_mappings = 1
vmap <c-j> <Plug>snipMateNextOrTrigger
vmap <c-k> <Plug>snipMateBack
imap <expr> <c-k> pumvisible() ? "\<c-y>\<Plug>snipMateBack" : "\<Plug>snipMateBack"
imap <expr> <c-j> pumvisible() ? "\<c-y>\<Plug>snipMateNextOrTrigger" : "\<Plug>snipMateNextOrTrigger"

"path to the libclang.so file
let g:ncm2_pyclang#library_path = '/usr/lib64/llvm5.0/lib/libclang.so.5.0'

