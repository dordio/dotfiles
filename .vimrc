filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on             " enables syntax highlighting
set number            " displays the line number column
set noswapfile        " doesn't create a swapfile for opened files
set autoindent        " auto indent lines on ENTER
set showcmd           " show size of selection
set autowrite         " don't need : to run commands
set autoread          " reload files changed outside of vim
set ignorecase        " ignore case on search
set incsearch         " show results as you type
set laststatus=2      " display status line on start
set rnu               " enable relative numbering
set nohls

" SCROLLING
set scrolloff=5
set sidescrolloff=15
set sidescroll=1

call plug#begin('~/.vim/plugs')
Plug 'preservim/nerdtree'
call plug#end()

map <F6> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
