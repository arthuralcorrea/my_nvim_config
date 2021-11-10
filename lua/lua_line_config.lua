require'lualine'.get_config()
require('lualine').setup{
    sections={
         lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
        lualine_x = {'filetype'},
        lualine_y = {},
        lualine_z = {}
    }
}

