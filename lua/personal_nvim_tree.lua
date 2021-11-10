
local map = vim.api.nvim_set_keymap

require'nvim-tree'.setup {}
--
--- remaps
local options = { noremap = true }
map('n', '<leader>tt', ':NvimTreeFindFileToggle<cr>', options)
