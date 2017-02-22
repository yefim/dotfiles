set shell=/bin/bash

let g:python_host_skip_check=1
let g:loaded_python3_provider=1

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'chriskempson/base16-vim'
Plug 'roman/golden-ratio'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'

call plug#end()

set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smarttab
set expandtab

set background=dark
colorscheme base16-default-dark

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

noremap j gj
noremap k gk
noremap gj j
noremap gk k

command WQ wq
command Wq wq
command W w
command Q q

let g:syntastic_python_flake8_post_args = '--ignore=E121,E111'
let g:syntastic_javascript_checkers = ['eslint']

let mapleader=","

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup

  let g:ackprg = 'ag --vimgrep --nogroup --nocolor'
endif

let g:ack_autoclose = 1
let g:ackhighlight = 1

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

highlight link QuickFixLine Normal
