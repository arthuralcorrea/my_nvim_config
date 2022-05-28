local g = vim.g

g.dashboard_default_executive = "telescope"

g.dashboard_custom_header = {
  [[ ███████████████████████████ ]],
  [[ ███████▀▀▀░░░░░░░▀▀▀███████ ]],
  [[ ████▀░░░░░░░░░░░░░░░░░▀████ ]],
  [[ ███│░░░░░░░░░░░░░░░░░░░│███ ]],
  [[ ██▌│░░░░░░░░░░░░░░░░░░░│▐██ ]],
  [[ ██░└┐░░░░░░░░░░░░░░░░░┌┘░██ ]],
  [[ ██░░└┐░░░░░░░░░░░░░░░┌┘░░██ ]],
  [[ ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██ ]],
  [[ ██▌░│██████▌░░░▐██████│░▐██ ]],
  [[ ███░│▐███▀▀░░▄░░▀▀███▌│░███ ]],
  [[ ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██ ]],
  [[ ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██ ]],
  [[ ████▄─┘██▌░░░░░░░▐██└─▄████ ]],
  [[ █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████ ]],
  [[ ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████ ]],
  [[ █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████ ]],
  [[ ███████▄░░░░░░░░░░░▄███████ ]],
  [[ ██████████▄▄▄▄▄▄▄██████████ ]],
  [[                            ]],
  [[ --------TERMINATORS--------]],
}

g.dashboard_custom_section = {
  a = { description = { "Change Project   " }, command = 'lua print("not implemented")' },
  b = { description = { "Recent Files     " }, command = "Telescope oldfiles" },
  c = { description = { "Config           " }, command = "cd ~/.config/nvim/ | e ." },
  d = { description = { "Todo List        " }, command = 'lua print("not implemented")' },
}
g.dashboard_custom_footer = {}
