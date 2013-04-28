set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'flazz/vim-colorschemes'
Bundle 'ervandew/supertab'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'gregsexton/MatchTag'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'skammer/vim-css-color'
Bundle 'groenewege/vim-less'
"Bundle 'Valloric/YouCompleteMe'

let g:syntastic_python_flake8_post_args='--ignore=E121,E111'

set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

syntax enable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smarttab
set expandtab
let mapleader = ","
let g:maplead = ","
filetype plugin indent on

colorscheme wombat
"colorscheme summerfruit256
set guifont=Ubuntu\ Mono\ 14

set guioptions-=L
set guioptions=-l

source $VIMRUNTIME/mswin.vim
behave mswin

au BufNewFile,BufRead *.ejs set filetype=html

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

inoremap jk <Esc>
inoremap kj <Esc>

map :W :w
map :Q :q

set guioptions+=lrb
set guioptions-=lrb
