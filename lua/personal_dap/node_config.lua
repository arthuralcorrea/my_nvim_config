local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.config/vscode-node-debug2/out/src/nodeDebug.js'},
}


