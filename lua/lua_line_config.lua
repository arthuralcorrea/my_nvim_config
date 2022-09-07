local function relativePath()
  return vim.fn.expand "%:~:."
end

require("lualine").setup {
  sections = {
    lualine_a = {
      "mode",
    },
    lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        sources = {
          "nvim_diagnostic",
        },
      },
    },
    lualine_c = {
      relativePath,
    },
    lualine_x = {
      "fileformat",
      "filetype",
    },
    lualine_y = {
      "progress",
    },
    lualine_z = {
      "location",
    },
  },
}
