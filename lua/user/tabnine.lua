require('tabnine').setup({
  disable_auto_comment=false,
  accept_keymap="<M-n>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#ABB2BF", cterm = 244},
  exclude_filetypes = {"TelescopePrompt"},
  log_file_path = nil, -- absolute path to Tabnine log file
})
require('tabnine.status').status()
