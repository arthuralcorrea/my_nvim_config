require "personal_dap.node_config"
local map = vim.api.nvim_set_keymap

vim.fn.sign_define("DapBreakpoint", { text = "🛑" })
vim.fn.sign_define("DapStopped", { text = "🟢" })

local options = { noremap = false }
map("n", "<leader>dh", ":lua require'dap'.toggle_breakpoint()<cr>", options)
