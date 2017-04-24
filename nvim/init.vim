filetype indent on
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'
Plug 'wakatime/vim-wakatime'
call plug#end()

let g:user_emmet_leader_key=','
let g:UltiSnipsExpandTrigger="<c-n>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Colors {{{
syntax enable
set background=light
" }}}

" Misc {{{
set ttyfast
set backspace=indent,eol,start
set guifont=Source\ Code\ Pro\ 14
set clipboard=unnamedplus
set nobackup
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
map <C-h> :%s/
map <C-s> <Esc>:w <CR>
inoremap <C-s> <c-o>:w <CR>
" }}

" Alt + Arrow Key move {{{
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>
"}}}

" Tab control
nnoremap <C-t> :sp<CR>
inoremap <C-t> <Esc>:sp<CR>

" splits {{{
set splitbelow
set splitright
" }}}
