
" ============
" == PLUGIN ==
" ============
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'gilligan/vim-lldb'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

" ================
" === COC.NVIM ===
" ================

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" status line and tab line configuration
let g:airline#extensions#tabline#enabled = 1

" NERDTree configuration
let g:NERDTreeWinPos = "right"

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

set number
" set cursorline
set ignorecase
set showcmd
set showmatch
set hlsearch
set history=1000
set wildmenu
" set word wrap
set wrap
set linebreak
" set spell " spell checker
set relativenumber " relative line number
language en_US
set backspace=indent,eol,start
set fillchars+=vert:\|
set tabstop=4
set shiftwidth=4

" ===============
" === MAPPING ===
" ===============
:nmap tt :NERDTree<cr>
:nmap <C-]> :tabnext<cr>
:nmap q :q<cr>
:nmap <C-s> :w<cr>
