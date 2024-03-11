require "personal_packages"
require "tests_coverage"
require "lua_line_config"
require "harpoon_config"
require "maps"
require "personal_cmp"
require "personal_lsp"
require "personal_nvim_tree"
require "personal_ts"
require "sets"
require "personal_dap"
require "gitsigns_config"
require "pTelescope"
require "pRefactoring"

vim.opt.spelllang = "en_us"
vim.opt.spell = true

require("mason").setup()
