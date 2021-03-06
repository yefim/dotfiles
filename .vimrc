set shell=/bin/bash

let g:python_host_skip_check=1
let g:loaded_python3_provider=1

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'chriskempson/base16-vim'
Plug 'roman/golden-ratio'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'google/vim-searchindex'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'RRethy/vim-illuminate'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'

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

map q: <Nop>
nnoremap Q <nop>

let mapleader=" "

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
nnoremap <Leader>s :Ack!<Space><C-r><C-w><Space>

highlight link QuickFixLine Normal

let g:rainbow_active = 1

set noswapfile

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1

nnoremap <Leader>c :call NERDComment(0,"toggle")<Enter>
vnoremap <Leader>c :call NERDComment(0,"toggle")<Enter>
