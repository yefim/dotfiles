call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'altercation/vim-colors-solarized'
Plug 'roman/golden-ratio'
Plug 'scrooloose/syntastic'

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
let g:solarized_visibility = 'high'
let g:solarized_contrast = 'high'
colorscheme solarized

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
