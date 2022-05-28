require "paq" {
  'tpope/vim-dispatch',
  'clojure-vim/vim-jack-in',
  'radenling/vim-dispatch-neovim',
  'Olical/conjure',
  'vimwiki/vimwiki',
  'ThePrimeaen/harpoon',
  'glepnir/dashboard-nvim',
	"gruvbox-community/gruvbox",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip",
	"neovim/nvim-lspconfig",
	"nvim-telescope/telescope.nvim",
	"nvim-treesitter/nvim-treesitter",
	"savq/paq-nvim",
	"tpope/vim-fugitive",
  'nvim-lua/plenary.nvim',
  'kyazdani42/nvim-web-devicons',
  'tmux-plugins/vim-tmux',
  'mfussenegger/nvim-dap',
  'lewis6991/gitsigns.nvim',
  {
  'kaicataldo/material.vim',
  branch='main'
  },
  {
      'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
},
  {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
}
