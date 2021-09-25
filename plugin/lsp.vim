" TODO: Configurar LSP
"   gtd,
"   find-references,
"   hover, completion, 
"   rename, 
"   format,
"   refactor
"
lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}
EOF
