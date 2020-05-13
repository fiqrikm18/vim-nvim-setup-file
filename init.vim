set nocompatible
set number relativenumber

call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'vim-airline/vim-airline-themes'

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
let g:neomake_python_enabled_makers = ['pylint']

hi HighlightedyankRegion cterm=reverse gui=reverse

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

set ts=2
set sts=2
set et

set ttimeoutlen=50

let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

call plug#end()

