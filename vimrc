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
set hlsearch          " highlight search results
set laststatus=2      " display status line on start
" set rnu               " enable relative numbering
" set background=dark
" set nohlsearch


" SCROLLING
set scrolloff=5
set sidescrolloff=15
set sidescroll=1


" USE ENTER TO ADD LINES OUTSIDE OF INSERT MODE
nnoremap <CR> o<Esc>
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" nnoremap <silent> <Esc> :noh<CR><Esc>

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
