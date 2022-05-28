local map = vim.api.nvim_set_keymap

local options = { noremap = true }

map('n', '<leader>am', 'lua require("harpoon.ui").add_file()', options)
map('n', '<leader>um', 'lua require("harpoon.ui").toggle_quick_menu()', options)


