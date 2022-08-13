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
Plugin 'preservim/nerdcommenter'
Plugin 'lifepillar/vim-solarized8'
Plugin 'lifepillar/vim-gruvbox8'
Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

filetype plugin indent on " required

" ???
set showcmd
set noshowmode " do not show --INSERT-- in the command bar, already shown in airline
set mouse=a
set nobackup
set cursorline
"set gcr=a:blinkon0
set scrolloff=3
set sidescrolloff=5
set termguicolors
set hidden

" Color theme
set background=dark
colorscheme gruvbox8_hard
"colorscheme solarized8
"let g:lightline = { 'colorscheme': 'solarized' }
"autocmd vimenter * ++nested colorscheme solarized8

" USE SYSTEM CLIPBOARD
set clipboard+=unnamedplus

" ------------------------------------------------------------------------------ 
" TEMP FILES
" ------------------------------------------------------------------------------ 
set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/swp//


" ------------------------------------------------------------------------------ 
" PERSISTENT UNDO
" ------------------------------------------------------------------------------ 
set undofile
set undodir=$HOME/.vim/undo


" ------------------------------------------------------------------------------ 
" Cursor line in normal mode, not in insert mode
" ------------------------------------------------------------------------------ 
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline


" ------------------------------------------------------------------------------ 
" TABS, WHITESPACE ETC
" ------------------------------------------------------------------------------ 
set tabstop=4 softtabstop=0 expandtab shiftwidth=4
set nowrap
set listchars=eol:¶,tab:>-,space:·,extends:»,precedes:«
set list
set showmatch


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


augroup XML
    autocmd!
    autocmd FileType xml let g:xml_syntax_folding=1
    autocmd FileType xml setlocal foldmethod=syntax
    autocmd FileType xml :syntax on
    autocmd FileType xml :%foldopen!
augroup END


" ------------------------------------------------------------------------------ 
" SEARCH
" ------------------------------------------------------------------------------ 
set hlsearch
set incsearch
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

nmap <C-n>   :cn!<CR>
nmap <C-p>   :cp!<CR>
nmap <leader>f :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/j %"<CR>:copen 10<CR>

" -------------------------------------------------------------------------------- 
" On demand line hightlight
" -------------------------------------------------------------------------------- 

" define line highlight color
highlight LineHighlight ctermbg=DarkMagenta guibg=SkyBlue4

" highlight the current line
nnoremap <silent> <Leader>ll :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>

" clear all the highlighted lines
nnoremap <silent> <Leader>lc :call clearmatches()<CR>

let g:gruvbox_filetype_hi_groups = 1
let g:grubox_plugin_hi_groups = 1

let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
                    \ 'left': [ [ 'mode', 'paste' ],
                    \           [ 'readonly', 'filename', 'modified', 'git_branch'] ]
                    \ },
                    \ 'component_function': {
                            \ 'git_branch': 'FugitiveHead'
                    \ }
            \ }

