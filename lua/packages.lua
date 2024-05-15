return require("packer").startup(function(use)
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }
  use {
    "glacambre/firenvim",
    run = function()
      vim.fn["firenvim#install"](0)
    end,
  }
  use { "williamboman/mason.nvim" }
  use "nyoom-engineering/nyoom.nvim"
  use "Shatur/neovim-ayu"
  use "patstockwell/vim-monokai-tasty"
  use "numToStr/Comment.nvim"
  use "dbeniamine/cheat.sh-vim"
  use "davidsierradz/cmp-conventionalcommits"
  use "JohnnyMorganz/StyLua"
  use "Olical/conjure"
  use "ThePrimeagen/harpoon"
  use "clojure-vim/vim-jack-in"
  use "gruvbox-community/gruvbox"
  use "EdenEast/nightfox.nvim"
  use "hrsh7th/cmp-buffer"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "NLKNguyen/papercolor-theme"
  use "SirVer/ultisnips"
  use "dcampos/nvim-snippy"
  use "dcampos/cmp-snippy"
  use "quangnguyen30192/cmp-nvim-ultisnips"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip"
  use "kyazdani42/nvim-web-devicons"
  use "lewis6991/gitsigns.nvim"
  use "mfussenegger/nvim-dap"
  use "neovim/nvim-lspconfig"
  use "nvim-lua/plenary.nvim"
  use "hrsh7th/cmp-nvim-lua"
  use "nvim-telescope/telescope.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use "radenling/vim-dispatch-neovim"
  use "savq/paq-nvim"
  use "tmux-plugins/vim-tmux"
  use "tpope/vim-dispatch"
  use "tpope/vim-fugitive"
  use "vimwiki/vimwiki"
  use "wesleimp/stylua.nvim"
  use "nvim-lua/plenary.nvim"
  use {
    "kaicataldo/material.vim",
    branch = "main",
  }
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup {}
    end,
  }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  }
end)
