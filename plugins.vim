" auto-install vim-plug
if empty(fnamemodify(expand('<sfile>'), ':h').'/autoload/plug.vim')
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif



call plug#begin('~/.config/nvim/plugged')

Plug 'iCyMind/NeoSolarized'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-sleuth'
Plug 'qba10/vim-sidemenu'
Plug 'qba10/vim-session'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mhinz/vim-signify'
Plug 'justinmk/vim-syntax-extra'
Plug 'thinca/vim-localrc'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jsfaint/gen_tags.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-gtags'
Plug 'ncm2/ncm2-snipmate'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-neoinclude'
Plug 'Shougo/neoinclude.vim'
Plug 'ncm2/ncm2-path'
Plug 'jiangmiao/auto-pairs'
Plug 'vivien/vim-linux-coding-style'
Plug 'EESchneider/vim-rebase-mode'
" snipmate dependencies
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
"Lazy load plugins:
"
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle'}

call plug#end()

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/plugins/ctrlspace.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/plugins/vimindent.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/plugins/vim-sidemenu.vim'
