execute pathogen#infect()

" ???
set showcmd
set mouse=a

" USE SYSTEM CLIPBOARD
set clipboard=unnamed

" TMP FILES
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


" ------------------------------------------------------------------------------ 
" KEYBOARD SHORTCUTS
" ------------------------------------------------------------------------------ 
let mapleader=" "
nnoremap <leader>s :w<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>p :Files<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>r :Rg<CR>

map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

nmap <F3>   :cn!<CR>
nmap <C-F3> :cp!<CR>
nmap <C-F7> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/j %"<CR>:copen 10<CR>

