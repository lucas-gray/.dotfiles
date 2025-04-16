" Vim configuration

set nocompatible

syntax on

" Disable the default Vim startup message
set shortmess+=I

" Show relative line numbers
set number
set relativenumber

" Minimum number of screen lines to keep above and below the cursor
set scrolloff=10

" Always show the status line at the bottom, even if you only have one window open
set laststatus=2

" Number of visual spaces per TAB
set tabstop=4 

" Number of spaces in tab when editing
set softtabstop=4 

" Tabs become spaces
set expandtab 

" Using > to insert tabs uses 4 spaces
set shiftwidth=4 

" Automatically indent
set ai 

" Shows command at bottom
set showcmd 

" Highlight matching for []{}()
set showmatch 

" Allow backspace over anything
set backspace=indent,eol,start

" Allow hidden buffer
set hidden

" Case-insensitive search, case-sensitive when captial letters are present
set ignorecase
set smartcase

" Enable searching while typing
set incsearch

" Unbind some useless/annoying default key bindings
nmap Q <Nop>

" Disable audible bell because it's annoying
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

" Combine Vim and system clipboard
set clipboard=unnamed

" Disable arrow keys for movement
" Normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" Insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
