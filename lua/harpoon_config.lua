local map = vim.api.nvim_set_keymap

local options = { noremap = true }

map("n", "<leader>am", 'lua require("harpoon.ui").add_file()', options)
