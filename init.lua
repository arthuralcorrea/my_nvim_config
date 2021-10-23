local set = vim.o
local fn = vim.fn
local g = vim.g
local map = vim.api.nvim_set_keymap

require "paq" {
	"savq/paq-nvim";
	"preservim/nerdtree";
	"neovim/nvim-lspconfig";
	'nvim-lua/plenary.nvim';
	"nvim-telescope/telescope.nvim";
	"nvim-treesitter/nvim-treesitter",
	"gruvbox-community/gruvbox",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/vim-vsnip",
	"tpope/vim-fugitive"
}


vim.g.gruvbox_contrast_dark = "hard"

vim.cmd 'colorscheme gruvbox'

set.encoding='utf-8'
set.cmdheight=2
set.hidden=true
set.ignorecase=true
set.expandtab=true
set.scrolloff=8
set.shiftwidth=2
set.tabstop=2
set.termguicolors=true
set.smartcase=true
set.completeopt='menu,menuone,noselect'
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop=0
set.smarttab=true
set.relativenumber = true
set.number = true
set.smartcase = true
set.incsearch = true
set.smartindent = true
set.mouse = "nv"

g.mapleader = " "

local options = { noremap = true }

map('n', '<leader>tt', ':NERDTreeToggle<CR>', options)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>ch', ':noh<cr>', options)
map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<cr>', options)
map('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<cr>', options)
map('n', '<leader>gh', ':lua vim.lsp.buf.hover()<cr>', options)
map('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<cr>', options)
map('n', '<leader>gr', ':lua vim.lsp.buf.references()<cr>', options)
map('n', '<leader>oo', ':wincmd o<cr>', options)
map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<keader>k', ':wincmd k<cr>', options)
map('n', '<leader>j', ':wincmd j<cr>', options)
map('n', '<leader>h', ':wincmd h<cr>', options)
map('n', '<leader>v', ':wincmd v<cr>', options)
map('n', '<leader>s', ':wincmd v<cr>', options)
map('n', '<leader>gg', ':Git<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>td', ':e ~/Tasks/TODO.md<cr>', options)
map('n', '<leader>el', ':e ~/.config/nvim/init.lua<cr>', options)
map('n', '<leader>tt', ':NERDTreeToggle<cr>', options)
map('n', '<leader>tf', ':NERDTreeFind<cr>', options)

local sumneko_root_path = fn.stdpath('cache')..'/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/macOS/lua-language-server"

local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

require'nvim-treesitter.configs'.setup {
highlight = {
    enable = true,
}
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


require'lspconfig'.pyright.setup{
  capabilities = capabilities;
}
require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  capabilities = capabilities;
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

