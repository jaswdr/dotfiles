filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
"Plugin 'albertorestifo/github.vim'
call vundle#end()

"colorscheme github

" Fast scroll rendering
set ttyfast

" Configure backspacing
set backspace=indent,eol,start

" Allow copy to clipboard with CTRL+SHIFT+C
"set clipboard=unnamedplus

" Disable swap files
set noswapfile

" Disable VI compatibility
set nocompatible

" Remove status line
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

" Incremental auto completition
set complete-=i

" Disable mouse usage in all modes
set mouse=

" Show a cursor line
set cursorline

" Change tabs to spaces
set expandtab

" Number of spaces used when pressed tab
set tabstop=4
set shiftwidth=4

" Number of spaces that a <Tab> counts for while performing editing
set softtabstop=4

" Number of lines check in 'set' commands
set modelines=1

" Show an auto completition menu when pressing <Tab>
set wildmenu

" Disable draw of screen when macros/registers and other commands run
set lazyredraw

" When on, splitting a window will put the new window below the current
set splitbelow

" When on, splitting a window will put the new window right of the current one
set splitright

" Search recursively
" set path+=**
set path=$PWD/**

" No ignore case when searching
set noignorecase

" Incremental search
set incsearch

" Disable highlighting when searching
set hlsearch
hi Search ctermbg=LightYellow

" Ignore directories when searching
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/vendor/*,*/bower_components/*,*/node_modules/*
" }}}

" Open find files
map <C-p> <Esc>:find 

" CTRL + HJKL
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Change tab behavior between file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2

" Disable sintax highlight
syntax off

" Add left column spacing for better visualization
set foldcolumn=2

" Use light background
set background=light

" Show line numbers
set nu

" Automatically write content of buffer when calling :make or something
set autowrite
set autoread

" Show listchars
set list
set listchars=eol:$
set listchars+=tab:..

" ripgrep
" set grepprg=rg\ --vimgrep
" map <C-n> <Esc>:cnext<CR>
" map <C-i> <Esc>:cprevious<CR>

" NERDTree customs
map <C-e> <Esc>:NERDTreeToggle<CR>
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 45
"map <C-e> <Esc>:Sexplore<CR>

" General fixes
command! MakeTags !ctags -R --exclude=*.json,*.js,*.pyc,*.log .
command! FixWhitespace :%s/\s\+$//e

" Golang
"command! GoImports execute ":silent !goimports -w %" | execute ":redraw!"
"command! GoTest !docker-compose exec app go test -failfast ./...

" Setups per project
command! KernelSetup :set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
command! YamlSetup :tabstop=2 shiftwidth=2 expandtab

map <F5> :GoImports<CR>
map <C-t> :terminal<CR>

" vim-go customs
let g:go_list_type="quickfix"
let g:go_test_timeout="10s"
let g:go_fmt_command="gofmt"
let g:go_fmt_autosave = 1

" Ultisnippets
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips']

" Highlight
" highlight NonText ctermfg=LightGray

" Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
