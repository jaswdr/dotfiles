filetype indent on
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-signify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()


" Misc {{{
syntax on
set nu
set swapfile
set dir=~/.tmp
set background=light
set ttyfast
set backspace=indent,eol,start
set clipboard=unnamedplus
set splitbelow
set splitright
set autoindent
set smartindent
set mouse=a
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set modelines=1
set cursorline
set showmatch
set lazyredraw
set path+=**
set ignorecase
set incsearch
set nohlsearch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/vendor/*,*/bower_components/*,*/node_modules/*
let mapleader=","

" Shortcuts
map <C-e> :NERDTreeToggle<CR>
map <C-a> GVgg
map <C-z> u
map <C-w> :close <Enter>
map <C-f> /
map <C-p> <Esc>:find 
map <F3> n

" Ctrl + HJKL movement
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Tab control
nnoremap <C-t> :sp<CR>
inoremap <C-t> <Esc>:sp<CR>

" Multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-n>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Emmet
let g:user_emmet_leader_key=','
