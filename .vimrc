set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set cursorline
set noshowmode
set termguicolors
set updatetime=100

call plug#begin('~/.vim/plugged')

" Themes
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'tomasr/molokai'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif



let g:deoplete#enable_at_startup = 1

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'



colorscheme molokai
let g:molokai_original=1


