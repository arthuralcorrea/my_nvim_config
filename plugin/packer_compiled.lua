-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
  vim.api.nvim_command 'echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"'
  return
end

vim.api.nvim_command "packadd packer.nvim"

local no_errors, error_msg = pcall(function()
  _G._packer = _G._packer or {}
  _G._packer.inside_compile = true

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end

  local function save_profiles(threshold)
    local sorted_times = {}
    for chunk_name, time_taken in pairs(profile_info) do
      sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
    end
    table.sort(sorted_times, function(a, b)
      return a[2] > b[2]
    end)
    local results = {}
    for i, elem in ipairs(sorted_times) do
      if not threshold or threshold and elem[2] > threshold then
        results[i] = elem[1] .. " took " .. elem[2] .. "ms"
      end
    end
    if threshold then
      table.insert(results, "(Only showing plugins that took longer than " .. threshold .. " ms " .. "to load)")
    end

    _G._packer.profile_output = results
  end

  time([[Luarocks path setup]], true)
  local package_path_str =
    "/Users/arthurcorrea/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/arthurcorrea/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/arthurcorrea/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/arthurcorrea/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
  local install_cpath_pattern = "/Users/arthurcorrea/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
  if not string.find(package.path, package_path_str, 1, true) then
    package.path = package.path .. ";" .. package_path_str
  end

  if not string.find(package.cpath, install_cpath_pattern, 1, true) then
    package.cpath = package.cpath .. ";" .. install_cpath_pattern
  end

  time([[Luarocks path setup]], false)
  time([[try_loadstring definition]], true)
  local function try_loadstring(s, component, name)
    local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
    if not success then
      vim.schedule(function()
        vim.api.nvim_notify(
          "packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
          vim.log.levels.ERROR,
          {}
        )
      end)
    end
    return result
  end

  time([[try_loadstring definition]], false)
  time([[Defining packer_plugins]], true)
  _G.packer_plugins = {
    ["Comment.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/Comment.nvim",
      url = "https://github.com/numToStr/Comment.nvim",
    },
    LuaSnip = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/LuaSnip",
      url = "https://github.com/L3MON4D3/LuaSnip",
    },
    StyLua = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/StyLua",
      url = "https://github.com/JohnnyMorganz/StyLua",
    },
    ["cheat.sh-vim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cheat.sh-vim",
      url = "https://github.com/dbeniamine/cheat.sh-vim",
    },
    ["cmp-buffer"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-buffer",
      url = "https://github.com/hrsh7th/cmp-buffer",
    },
    ["cmp-cmdline"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
      url = "https://github.com/hrsh7th/cmp-cmdline",
    },
    ["cmp-conventionalcommits"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-conventionalcommits",
      url = "https://github.com/davidsierradz/cmp-conventionalcommits",
    },
    ["cmp-nvim-lsp"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
      url = "https://github.com/hrsh7th/cmp-nvim-lsp",
    },
    ["cmp-nvim-lua"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
      url = "https://github.com/hrsh7th/cmp-nvim-lua",
    },
    ["cmp-nvim-ultisnips"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
      url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips",
    },
    ["cmp-path"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-path",
      url = "https://github.com/hrsh7th/cmp-path",
    },
    ["cmp-snippy"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-snippy",
      url = "https://github.com/dcampos/cmp-snippy",
    },
    ["cmp-vsnip"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
      url = "https://github.com/hrsh7th/cmp-vsnip",
    },
    cmp_luasnip = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
      url = "https://github.com/saadparwaiz1/cmp_luasnip",
    },
    conjure = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/conjure",
      url = "https://github.com/Olical/conjure",
    },
    firenvim = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/firenvim",
      url = "https://github.com/glacambre/firenvim",
    },
    ["gitsigns.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
      url = "https://github.com/lewis6991/gitsigns.nvim",
    },
    gruvbox = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/gruvbox",
      url = "https://github.com/gruvbox-community/gruvbox",
    },
    harpoon = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/harpoon",
      url = "https://github.com/ThePrimeagen/harpoon",
    },
    ["lualine.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/lualine.nvim",
      url = "https://github.com/nvim-lualine/lualine.nvim",
    },
    ["material.vim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/material.vim",
      url = "https://github.com/kaicataldo/material.vim",
    },
    ["neovim-ayu"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/neovim-ayu",
      url = "https://github.com/Shatur/neovim-ayu",
    },
    ["nightfox.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
      url = "https://github.com/EdenEast/nightfox.nvim",
    },
    ["nvim-cmp"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-cmp",
      url = "https://github.com/hrsh7th/nvim-cmp",
    },
    ["nvim-dap"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-dap",
      url = "https://github.com/mfussenegger/nvim-dap",
    },
    ["nvim-lspconfig"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
      url = "https://github.com/neovim/nvim-lspconfig",
    },
    ["nvim-snippy"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-snippy",
      url = "https://github.com/dcampos/nvim-snippy",
    },
    ["nvim-tree.lua"] = {
      config = {
        "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0",
      },
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
      url = "https://github.com/kyazdani42/nvim-tree.lua",
    },
    ["nvim-treesitter"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
      url = "https://github.com/nvim-treesitter/nvim-treesitter",
    },
    ["nvim-web-devicons"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
      url = "https://github.com/kyazdani42/nvim-web-devicons",
    },
    ["nyoom.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/nyoom.nvim",
      url = "https://github.com/nyoom-engineering/nyoom.nvim",
    },
    ["papercolor-theme"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/papercolor-theme",
      url = "https://github.com/NLKNguyen/papercolor-theme",
    },
    ["paq-nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/paq-nvim",
      url = "https://github.com/savq/paq-nvim",
    },
    ["plenary.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/plenary.nvim",
      url = "https://github.com/nvim-lua/plenary.nvim",
    },
    ["refactoring.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
      url = "https://github.com/ThePrimeagen/refactoring.nvim",
    },
    ["stylua.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/stylua.nvim",
      url = "https://github.com/wesleimp/stylua.nvim",
    },
    ["telescope.nvim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/telescope.nvim",
      url = "https://github.com/nvim-telescope/telescope.nvim",
    },
    ultisnips = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/ultisnips",
      url = "https://github.com/SirVer/ultisnips",
    },
    ["vim-dispatch"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-dispatch",
      url = "https://github.com/tpope/vim-dispatch",
    },
    ["vim-dispatch-neovim"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-dispatch-neovim",
      url = "https://github.com/radenling/vim-dispatch-neovim",
    },
    ["vim-fugitive"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-fugitive",
      url = "https://github.com/tpope/vim-fugitive",
    },
    ["vim-jack-in"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-jack-in",
      url = "https://github.com/clojure-vim/vim-jack-in",
    },
    ["vim-monokai-tasty"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-monokai-tasty",
      url = "https://github.com/patstockwell/vim-monokai-tasty",
    },
    ["vim-tmux"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-tmux",
      url = "https://github.com/tmux-plugins/vim-tmux",
    },
    ["vim-vsnip"] = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vim-vsnip",
      url = "https://github.com/hrsh7th/vim-vsnip",
    },
    vimwiki = {
      loaded = true,
      path = "/Users/arthurcorrea/.local/share/nvim/site/pack/packer/start/vimwiki",
      url = "https://github.com/vimwiki/vimwiki",
    },
  }

  time([[Defining packer_plugins]], false)
  -- Config for: nvim-tree.lua
  time([[Config for nvim-tree.lua]], true)
  try_loadstring(
    "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0",
    "config",
    "nvim-tree.lua"
  )
  time([[Config for nvim-tree.lua]], false)

  _G._packer.inside_compile = false
  if _G._packer.needs_bufread == true then
    vim.cmd "doautocmd BufRead"
  end
  _G._packer.needs_bufread = false

  if should_profile then
    save_profiles()
  end
end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command(
    'echohl ErrorMsg | echom "Error in packer_compiled: '
      .. error_msg
      .. '" | echom "Please check your config for correctness" | echohl None'
  )
end
