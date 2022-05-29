lua require('init')

colorscheme gruvbox

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

autocmd BufWrite,FileType *.lua :lua require("stylua").format()
autocmd BufWrite,FileType *.js,*.ts :EslintFixAll

