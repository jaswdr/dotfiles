set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()         " required
filetype plugin indent on " required

" Colors {{{
syntax enable        " enable syntax processing
set background=light " background light|dark
colorscheme solarized
" }}}

" Misc {{{
set ttyfast "faster redraw
set backspace=indent,eol,start
set guifont=UbuntuMono\ 14
set clipboard=unnamedplus

if has("multi_byte")
  if &termencoding == ""
      let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

" }}}

" Spaces & Tabs {{{
set tabstop=4     " 4 space tab
set expandtab     " use spaces for tabs
set softtabstop=4 " 4 space tab
set shiftwidth=4
set modelines=1
set autoindent
filetype indent on
filetype plugin on
" }}}

" UI Layout {{{
set number         " show line numbers
set cursorline     " highlight current line
set showmatch      " higlight matching parenthesis
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set wildmenu
set lazyredraw
" }}}

" Searching {{{
set ignorecase      " ignore case when searching
set incsearch       " search as characters are entered
set nohlsearch
" }}}

" Folding {{{
"=== folding ===
set foldmethod=indent " fold based on indent level
set foldnestmax=10    " max 10 depth
set foldlevelstart=10 " start with fold level of 1
set foldenable        " don't fold files by default on open
nnoremap <space> za
" }}}

" Shortcuts {{{
let mapleader=","
nnoremap <c-e> :NERDTreeToggle<CR>
nnoremap <c-p> :CtrlPBuffer<CR>
nnoremap <F4> :TagbarToggle<CR>
inoremap <F4> <Esc>:TagbarToggle<CR>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set nu

:map <C-a> GVgg
:map <C-n> :enew
:map <C-o> :e . <Enter>
:map <C-c> y
:map <C-v> p
:map <C-x> d
:map <C-z> u
:map <C-i> >>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:map <C-f> /
:map <F3> n
:map <C-h> :%s/
:map <S-t> vat
:map <S-T> vit
:map <S-{> vi{
:map <S-(> vi(
:map <S-[> vi[
:map <C-s> <Esc>:w <CR>
inoremap <C-s> <c-o>:w<CR>

" Alt + Arrow Key move {{{
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
"}}}

" Tab control
nnoremap <C-t> :sp<CR>
inoremap <C-t> <Esc>:sp<CR>

" splits {{{
set splitbelow
set splitright
" }}}

" Plugins Configurations {{{

" CtrlP {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd'] " php checkers
"}}}

" NeoComplCache {{{
let g:neocomplcache_enable_at_startup = 1 " enable on open file
" }}}

" Emmet {{{
let g:user_emmet_mode='a'              " enable all function in all mode.
let g:user_emmet_install_global = 0    " install Emmet in all modes
autocmd FileType html,css EmmetInstall " enable on html and css files
let g:user_emmet_leader_key=','        " leader key
" }}}

" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let laststatus=2
"}}}

" Ultisnips {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}}

" Indent guides {{{
set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_indent_levels = 30
let g:indent_guides_auto_colors = 1
"}}}

" }}}
