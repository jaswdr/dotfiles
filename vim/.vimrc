filetype off

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'jremmen/vim-ripgrep'
Plugin 'junegunn/fzf'
Plugin 'preservim/tagbar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

colorscheme solarized
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set complete-=i
set cursorline
set encoding=UTF-8
set expandtab
set foldenable
set foldmethod=indent   
set hidden
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set mouse=
set nobackup
set nocompatible
set noswapfile
set nowritebackup
set nu rnu
set path=$PWD/**
set shiftwidth=4
set shortmess+=c
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set ttyfast
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/vendor/*,*/bower_components/*,*/node_modules/*
set wildmenu
syntax on

"" COMMANDS
"autocmd FileType c call tagbar#autoopen(0)
"autocmd FileType python call tagbar#autoopen(0)

" Open find files
map <C-f> <Esc>:FZF<CR> 
map <C-g> <Esc>:Rg 

" Use C+N and C+I to go between tags
map <C-d> <Esc>:tnext<CR>
map <C-s> <Esc>:tag 
map <C-a> <Esc>:tprevious<CR>

" Use CTRL + TAB to change between tabs
nmap <C-t> :tab split<CR>
nmap <C-q> :tabprevious<CR>
nmap <C-w> :tabnext<CR>

" CTRL + HJKL
map <C-k> :wincmd k<CR>
map <C-j> :wincmd j<CR>
map <C-h> :wincmd h<CR>
map <C-l> :wincmd l<CR>

" Moving in terminal window
tmap <C-k> <C-w>k
tmap <C-j> <C-w>j
tmap <C-h> <C-w>h
tmap <C-l> <C-w>l

"" EXTENSIONS

" Ripgrep
set grepprg=rg\ --vimgrep\ --exclude=.git\ --exclude=tags\ --exclude=node_modules/*
let g:rg_binary='/local/home/jaswdr/.cargo/bin/rg'

" NERDTree
map <C-e> <Esc>:NERDTreeToggle<CR>
let g:NERDTreeWinSize=50

" Vim-Go

" Disable default stack mapping and rely on RipGrep instead
let g:go_def_mapping_enabled = 0
