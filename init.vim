set nocompatible 
syntax on
filetype off 

call plug#begin('~/.config/nvim/plugged') 
" latex-environment 
Plug 'lervag/vimtex' 
" colors-scheme 
Plug 'morhetz/gruvbox' 
" git 
Plug 'tpope/vim-fugitive' 
" files 
Plug 'preservim/nerdtree' 
" files organization 
Plug 'ctrlpvim/ctrlp.vim'
" syntax highlighting 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() 

colorscheme gruvbox 

" latex settings 
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u 
"control l -> corrects spelling errors 

set termguicolors
set bg=dark 

set tabstop=4
set shiftwidth=4 
set expandtab 
set nowra
set number 
set cursorline 
set showcmd
set hlsearch
set showmatch
set ruler 
set smartindent
set autowrite

"moves to where mouse is
set mouse=a

highlight Comment ctermfg=green
highlight LineNr ctermfg=DarkMagenta
 
nnoremap <C-A> ggVG
noremap f 0
noremap:map e $ 

vnoremap <C-c> "+y
vnoremap <C-v> "+p

inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>

map <silent> <C-n> :NERDTreeFocus<CR>
 
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp 
p
