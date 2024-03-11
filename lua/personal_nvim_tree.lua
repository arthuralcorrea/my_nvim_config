local map = vim.api.nvim_set_keymap

require("nvim-tree").setup {
  filters = {
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    custom = {},
    exclude = {},
  },
}
--
--- remaps
local options = {
  noremap = true,
}

map("n", "<leader>tt", ":NvimTreeFindFileToggle<cr>", options)
