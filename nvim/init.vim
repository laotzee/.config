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

call plug#begin('~/local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
Plug 'pocco81/auto-save.nvim'
Plug 'preservim/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
colorscheme tokyonight-night
