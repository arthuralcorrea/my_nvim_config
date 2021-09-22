syntax on

" Default config

set exrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set nu 
set relativenumber
set noerrorbells
set nowrap
set incsearch
set expandtab
set smartcase
set undofile
set termguicolors
set scrolloff=8
set colorcolumn=70
set signcolumn=yes
set mouse=nv
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'UltiSnips'

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

" TODO: Configurar LSP
"   gtd,
"   find-references,
"   hover, completion, 
"   rename, 
"   format,
"   refactor

lua << EOF
require'lspconfig'.pyright.setup{
    on_attach=require'completion'.on_attach
}
require'lspconfig'.tsserver.setup{
    on_attach=require'completion'.on_attach
}
require'lspconfig'.vimls.setup{
    on_attach=require'completion'.on_attach
}
require'lspconfig'.bashls.setup{
    on_attach=require'completion'.on_attach
}
EOF


" TODO: Configurar Telescope
" TODO: Configurar treesitter
" TODO: Configurar undotree
" TODO: Configurar fugitive
" TODO: Configurar File explorer (Functions)
" TODO: Configurar Arvore
" TODO: Configurar debugger
" TODO: Configurar nvim no browser

" Remaps

let mapleader = " "
