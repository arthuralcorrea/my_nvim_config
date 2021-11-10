local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = " "

local options = { noremap = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>ch', ':noh<cr>', options)
map('n', '<leader>oo', ':wincmd o<cr>', options)
map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>k', ':wincmd k<cr>', options)
map('n', '<leader>j', ':wincmd j<cr>', options)
map('n', '<leader>h', ':wincmd h<cr>', options)
map('n', '<leader>v', ':wincmd v<cr>', options)
map('n', '<leader>s', ':wincmd s<cr>', options)
map('n', '<leader>gg', ':Git<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>td', ':e ~/Tasks/TODO.md<cr>', options)
map('n', '<leader>el', ':e ~/.config/nvim/init.lua<cr>', options)
map('n', '<leader>fa', ':EslintFixAll<cr>', options)
map('n', '<leader>ch', ':noh<cr>', options)