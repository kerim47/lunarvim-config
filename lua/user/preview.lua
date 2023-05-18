require('goto-preview').setup({
  width = 100, -- Width of the floating window
  height = 50, -- Height of the floating window
})
vim.api.nvim_set_keymap('n', 'gpd', "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'gpt', "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'gpi', "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'gP', "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'gpr', "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
