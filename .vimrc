filetype plugin on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>4jwf>a
imap jj <Esc>

syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set hidden
set noswapfile
set autoindent
set showcmd
set autowrite
set autoread
set ignorecase
set incsearch
set rnu
set nohls
set nocompatible
" colorscheme dracula
" set colorcolumn=80
" highlight colorcolumn ctermbg=242 ctermfg=235

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1

set laststatus=2
" hi StatusLine ctermbg=242 ctermfg=235
" hi TabLineFill ctermfg=25
" hi TabLine ctermbg=26 ctermfg=7
" hi TabLineSel ctermbg=202 ctermfg=0
" hi VertSplit cterm=none ctermfg=235

"call plug#begin('~/.vim/plugged')
"    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"call plug#end()
