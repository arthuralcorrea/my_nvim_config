local fn = vim.fn
local map = vim.api.nvim_set_keymap
local options = { noremap = true }

local sumneko_root_path = fn.stdpath "cache" .. "/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/macOS/lua-language-server"

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local capabilitiesCSS = vim.lsp.protocol.make_client_capabilities()

capabilitiesCSS.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").cssls.setup {}

require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").sumneko_lua.setup {
  cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        -- Setup your lua path
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
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

require("lspconfig").tsserver.setup {
  capabilities = capabilities,
}

require("lspconfig").vimls.setup {
  capabilities = capabilities,
}

require("lspconfig").jsonls.setup {
  capabilities = capabilities,
}

require("lspconfig").clojure_lsp.setup {}

require("lspconfig").eslint.setup {}

require("lspconfig").bashls.setup {
  capabilities = capabilities,
}

map("n", "<leader>gd", ":lua vim.lsp.buf.definition()<cr>", options)
map("n", "<leader>rn", ":lua vim.lsp.buf.rename()<cr>", options)
map("n", "<leader>gD", ":lua vim.lsp.buf.declaration()<cr>", options)
map("n", "<leader>ghh", ":lua vim.lsp.buf.hover()<cr>", options)
map("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<cr>", options)
map("n", "<leader>gr", ":lua vim.lsp.buf.references()<cr>", options)
map("n", "<leader>ld", ":lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", options)
map("n", "<leader>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", options)
map("n", "<leader>sh", ":lua vim.lsp.buf.signature_help()<CR>", options)
