local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = " "

local options = { noremap = true }

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", options)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", options)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", options)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", options)
map("n", "<leader>ch", ":noh<cr>", options)
map("n", "<leader>oo", ":wincmd o<cr>", options)
map("n", "<leader>l", ":wincmd l<cr>", options)
map("n", "<leader>k", ":wincmd k<cr>", options)
map("n", "<leader>j", ":wincmd j<cr>", options)
map("n", "<leader>h", ":wincmd h<cr>", options)
map("n", "<leader>v", ":wincmd v<cr>", options)
map("n", "<leader>s", ":wincmd s<cr>", options)
map("n", "<leader>gg", ":Git<cr>", options)
map("n", "<leader>gc", ":Git commit<cr>", options)
map("n", "<leader>td", ":e ~/Tasks/TODO.md<cr>", options)
map("n", "<leader>el", ":e ~/.config/nvim/init.lua<cr>", options)
map("n", "<leader>ch", ":noh<cr>", options)
map("n", "<leader>hh", ":Dashboard<cr>", options)
map("n", "<leader>am", ':lua require("harpoon.mark").add_file()<cr>', options)
map("n", "<leader>rm", ':lua require("harpoon.mark").rm_file()<cr>', options)
map("n", "<leader>mm", ":Telescope harpoon marks<cr>", options)
map("n", "<leader>mt", ':lua require("harpoon.ui").toggle_quick_menu()<cr>', options)
