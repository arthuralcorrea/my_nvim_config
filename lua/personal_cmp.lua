local cmp = require "cmp"

cmp.setup {
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require("snippy").expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert {
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "snippy" }, -- For snippy users.
    { name = "path" },
  }, {
    { name = "buffer", keyword_length = 5 },
  }),
}

cmp.setup.filetype("lua", {
  { name = "nvim_lsp" },
  { name = "vsnip" }, -- For vsnip users.
  { name = "luasnip" }, -- For luasnip users.
  { name = "ultisnips" }, -- For ultisnips users.
  { name = "snippy" }, -- For snippy users.
}, {
  { name = "buffer", keyword_length = 5 },
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
    { name = "conventionalcommits" },
  }, {
    { name = "buffer" },
  }),
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})
