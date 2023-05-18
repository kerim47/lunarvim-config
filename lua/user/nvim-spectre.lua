vim.api.nvim_set_keymap('n', '<leader>S', "<cmd>lua require('spectre').open()<CR>", { noremap = true })

-- search current word
vim.api.nvim_set_keymap('n', '<leader>sw', "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>s', "<esc>:lua require('spectre').open_visual()<CR>", { noremap = true })

-- search in current file
vim.api.nvim_set_keymap('n', '<leader>sp', "viw:lua require('spectre').open_file_search()<cr>", { noremap = true })

