lua require('init')


let g:vim_monokai_tasty_italic = 1
colorscheme PaperColor
set background=dark
set langmenu=en_US
let $LANG = 'en_US'

set noswapfile

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

autocmd BufWrite,FileType *.lua :lua require("stylua").format()
autocmd BufWrite,FileType *.js,*.ts,*jsx :EslintFixAll

