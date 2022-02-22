filetype off

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'jremmen/vim-ripgrep'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/tagbar'
Plugin 'flazz/vim-colorschemes'
call vundle#end()

filetype plugin indent on

colorscheme github
set autoread
set autowrite
set background=light
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
set list
set listchars=eol:$
set listchars+=tab:..
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
command! Tags !ctags -R --exclude=*.json,*.js,*.pyc,*.log .
command! FixWhitespace :%s/\s\+$//e

" Open find files
map <C-f> <Esc>:FZF<CR> 
map <C-g> <Esc>:Rg 

" Use C+N and C+I to go between tags
map <C-n> <Esc>:cnext<CR>
map <C-i> <Esc>:cprevious<CR>

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

" Setups per project
command! SetupKernel :set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
command! SetupYaml :tabstop=2 shiftwidth=2 expandtab

"" EXTENSIONS

" Ripgrep
set grepprg=rg\ --vimgrep
let g:rg_binary='$HOME/.cargo/bin/rg'

" NERDTree
map <C-e> <Esc>:NERDTreeToggle<CR>
let g:NERDTreeWinSize=50
