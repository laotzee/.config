set encoding=utf-8
syntax enable
set number relativenumber
set termguicolors
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set textwidth=79
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set so=999

call plug#begin('~/local/share/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'pocco81/auto-save.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
