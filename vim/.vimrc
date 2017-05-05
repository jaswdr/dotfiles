filetype indent on
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'raimondi/delimitmate'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()

let g:user_emmet_leader_key=','
let g:UltiSnipsExpandTrigger="<c-n>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Colors {{{
"syntax enable
set background=light
" }}}

" Misc {{{
set ttyfast
set backspace=indent,eol,start
"set guifont=Source\ Code\ Pro\ 14
set clipboard=unnamedplus
set swapfile
set dir=~/.tmp
" }}}

" Spaces & Tabs {{{
let mapleader=","
set smartindent
set mouse=a
set nu
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set modelines=1
set autoindent
" }}}

" UI Layout {{{
set number
set cursorline
set showmatch
set wildmenu
set lazyredraw
" }}}

" Searching {{{
set path+=**
set ignorecase
set incsearch
set nohlsearch
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/node_modules/*,*/bower_components/*,*/vendor/*

" Folding {{{
"=== folding ===
set foldmethod=indent
set foldnestmax=10
set foldlevelstart=10
set foldenable
nnoremap <space> za
" }}}

" Shortcuts {{{
map <C-e> :NERDTreeToggle<CR>
map <C-a> GVgg
map <C-n> :enew <Enter>
map <C-c> y
map <C-v> p
map <C-x> d
map <C-z> u
map <C-i> >>
map <C-w> :close <Enter>
map <C-W> :q! <Enter>
map <C-f> /
map <F3> n
inoremap <C-s> <c-o>:w <CR>
" }}

" Alt + Arrow Key move {{{
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>
"}}}

" Tab control
nnoremap <C-t> :sp<CR>
inoremap <C-t> <Esc>:sp<CR>

" splits {{{
set splitbelow
set splitright
" }}}

" {{{
let g:multi_cursor_use_default_mapping=0
"
" Default mapping
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-n>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" }}}
