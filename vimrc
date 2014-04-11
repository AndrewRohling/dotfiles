filetype off

filetype plugin indent on
set modelines=0
"call pathogen#helptags()

" Make vim more useful
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

set exrc

" Enhance command-line completion
set wildmenu
set wildignore=*.class

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Change mapleader
let mapleader=","

" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent

" Indent/dedent/autoindent what you just pasted
nnoremap >< V`]>
nnoremap <lt>> V`]<
nnoremap =- V`]=

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    autocmd! bufwritepost ~/.vimrc source %
endif

set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set foldcolumn=3
set foldmethod=marker

" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete


let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

set runtimepath^=~/.vim/bundle/ctrlp.vim