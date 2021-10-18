set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'wellle/targets.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'

" TODO put plugins here ...

call vundle#end()

filetype plugin indent on " required

" ???
set showcmd
set showmode
set mouse=a
set nobackup
set cursorline
set gcr=a:blinkon0
set scrolloff=3
set sidescrolloff=5
set termguicolors

" USE SYSTEM CLIPBOARD
set clipboard=unnamed

" TMP FILES
set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/swp//


" ------------------------------------------------------------------------------ 
" PERSISTENT UNDO
" ------------------------------------------------------------------------------ 
set undofile
set undodir=$HOME/.vim/undo


" ------------------------------------------------------------------------------ 
" TABS
" ------------------------------------------------------------------------------ 
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set nowrap


" ------------------------------------------------------------------------------ 
" LINE NUMBERING
" ------------------------------------------------------------------------------ 
set number
set relativenumber
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber
set numberwidth=4


" ------------------------------------------------------------------------------ 
" FOLDING
" ------------------------------------------------------------------------------ 
set foldenable
set foldmethod=indent
set foldlevelstart=4


" ------------------------------------------------------------------------------ 
" SEARCH
" ------------------------------------------------------------------------------ 
set hlsearch
set wildignore+=
set grepprg=grep\ -nH\ $*\ /dev/null

if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif

set ignorecase
set smartcase


" ------------------------------------------------------------------------------ 
" KEYBOARD SHORTCUTS
" ------------------------------------------------------------------------------ 
let mapleader=" "
nnoremap <leader>s :w<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>r :Rg<CR>

nmap <C-k> :bprev<CR>
nmap <C-j> :bnext<CR>

nmap <F3>   :cn!<CR>
nmap <C-F3> :cp!<CR>
nmap <C-F7> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/j %"<CR>:copen 10<CR>
