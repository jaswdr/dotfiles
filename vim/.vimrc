filetype off

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
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
command! SetupKernel :set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
command! SetupYaml :tabstop=2 shiftwidth=2 expandtab

" examples
"command! Tags !ctags -R --exclude=*.json,*.js,*.pyc,*.log .
"command! FixWhitespace :%s/\s\+$//e
"autocmd FileType c call tagbar#autoopen(0)
"autocmd FileType python call tagbar#autoopen(0)

" FIND FILES OR FIND CONTENT
map <C-f> <Esc>:FZF<CR> 
map <C-g> <Esc>:Rg 

" TAGS NAVIGATION
map <C-d> <Esc>:tnext<CR>
map <C-s> <Esc>:tag 
map <C-a> <Esc>:tprevious<CR>

" TABS NAVIGATION
nmap <C-t> :tab split<CR>
nmap <C-q> :tabprevious<CR>
nmap <C-w> :tabnext<CR>

" CTRL + HJKL
map <C-k> :wincmd k<CR>
map <C-j> :wincmd j<CR>
map <C-h> :wincmd h<CR>
map <C-l> :wincmd l<CR>

" INTEGRATE WITH TERMINAL
tmap <C-k> <C-w>k
tmap <C-j> <C-w>j
tmap <C-h> <C-w>h
tmap <C-l> <C-w>l

"" EXTENSIONS

" RIPGREP
set grepprg=rg\ --vimgrep\ --exclude=.git\ --exclude=tags\ --exclude=node_modules/*
let g:rg_binary='/home/jaswdr/.cargo/bin/rg'

" NERDTREE
map <C-e> <Esc>:NERDTreeToggle<CR>
let g:NERDTreeWinSize=50
