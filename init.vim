set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
" set noswapfile
set autoindent
set ignorecase
set incsearch
set rnu
set nocompatible
set mouse=v
set showmatch
set hlsearch
set wildmode=longest,list
filetype plugin indent on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast
syntax on

call plug#begin("~/.vim/plugged")
" Plugin selection
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
call plug#end()

" color schemes
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
" colorscheme evening
colorscheme dracula

" open new split windows to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split pane to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" press i to enter insert mode, and ii to exit insert mode
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$")
                \| exe "normal! g'\"" | endif
endif
