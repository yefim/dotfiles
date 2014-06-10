set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ervandew/supertab'
Plugin 'digitaltoad/vim-jade'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'gregsexton/MatchTag'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'skammer/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'roman/golden-ratio'
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on

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
