-- noremap ve silent true olarak bir keymap tanımla
local function keymap(mode, lhs, rhs, opts)
  opts = opts or {noremap = true, silent = true}
  vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- normal mode keymapping
lvim.leader = "space"
vim.g.mapleader = " "
keymap("n", "<leader>n", ":ASToggle<CR>")
keymap("n", "<leader>n", ":ASToggle<CR>")
-- Ctrl 
keymap("n", "<c-s>", ":w<cr>")
keymap('n', '<c-j>', 'dd')
-- shift
keymap("n", "<s-h>", "0")
keymap("n", "<s-l>", "$")
-- tab
keymap("n", "<tab>", ":bnext<cr>")
keymap("n", "<s-tab>", ":bprevious<cr>")
-- leader
keymap("n", "<leader>-", ":TagbarToggle<cr>")
keymap("n", "<leader>vh", "<C-w>h")
keymap("n", "<leader>vl", "<C-w>l")
keymap("n", "<leader>a", "gg0<s-v>G$")
keymap("n", "<leader>t", ":BufferKill<cr>")
-- meta
-- keymap("n", "<M-e>", "<C-e>")
-- keymap("n", "<M-e>", "<C-e>")
-- keymap("n", "<M-y>", "<C-y>")
keymap("n", "<M-h>", ":vertical resize -2<cr>")
keymap("n", "<M-l>", ":vertical resize +2<cr>")
keymap('n', '<cr>', 'v}')

keymap('n', 'ds', ':HopAnywhere<cr>')
-- insert mode keymapping
-- Ctrl
keymap("i", "<c-q>", "<esc>:wq!<cr>")
keymap("i", "<c-s>", "<esc>:w<cr>")

-- visual mode keymapping
keymap("v", "<s-h>", "0")
keymap("v", "<s-l>", "$")
keymap('v', '<C-c>', ':w! ~/.vimbuffer | !cat ~/.vimbuffer | clip.exe<CR>')
-- keymap('v', 'i,', ':w! ~/.vimbuffer | !cat ~/.vimbuffer | clip.exe<cr>')
-- vim.api.nvim_set_keymap('n', '<F11>', ':sp tags<CR>:%s/^\\([^\\t:]*:\\)\\=\\([^\\t]*\\).*/syntax keyword Tag \\2/<CR>:wq! tags.vim<CR>/^<CR><F12>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<F12>', ':so tags.vim<CR>', { noremap = true, silent = true })

-- C code execute
keymap( 'n', '<F4>', ':w<CR>:!gcc % -o output && ./output<CR>')
keymap( 'v', '<F4>', ':w<CR>:!gcc % -o output && ./output<CR>')
keymap( 'n', '<leader>m', ':w<CR>:TermExec cmd="gcc % -o output && ./output"<CR>')
keymap( 'v', '<leader>m', ':w<CR>:TermExec cmd="gcc % -o output && ./output"<CR>')
--vim.cmd('colorscheme vscode')
-- lvim.colorscheme = "desert"

-- -- Jupyter jukit plugin keymaps
-- keymap("n", "<leader>jaa", ":call jukit#splits#output()<cr>")
-- keymap("n", "<leader>jab", ":call jukit#splits#term()<cr>")
-- keymap("n", "<leader>jac", ":call jukit#splits#history()<cr>")
-- keymap("n", "<leader>jad", ":call jukit#splits#output_and_history()<cr>")
-- keymap("n", "<leader>jae", ":call jukit#splits#close_history()<cr>")
-- keymap("n", "<leader>jaf", ":call jukit#splits#close_output_split()<cr>")
-- keymap("n", "<leader>jag", ":call jukit#splits#close_output_and_history(1)<cr>")
-- keymap("n", "<leader>jah", ":call jukit#splits#show_last_cell_output(1)<cr>")
-- keymap("n", "<leader>jaj", ":call jukit#splits#out_hist_scroll(1)<cr>")
-- keymap("n", "<leader>jak", ":call jukit#splits#out_hist_scroll(0)<cr>")
-- keymap("n", "<leader>jal", ":call jukit#splits#toggle_auto_hist()<cr>")
-- keymap("n", "<leader>jam", ":call jukit#layouts#set_layout()<cr>")

-- keymap("n", "<leader>jba", ":ASToggle<CR>")
-- keymap('n', '<leader>jbb', ':call jukit#splits#output()<cr>')
-- keymap('n', '<leader>jbc', ':call jukit#splits#term()<cr>')
-- keymap('n', '<leader>jbd', ':call jukit#splits#history()<cr>')
-- keymap('n', '<leader>jbe', ':call jukit#splits#output_and_history()<cr>')
-- keymap('n', '<leader>jbf', ':call jukit#splits#close_history()<cr>')
-- keymap('n', '<leader>jbg', ':call jukit#splits#close_output_split()<cr>')
-- keymap('n', '<leader>jbh', ':call jukit#splits#close_output_and_history(1)<cr>')
-- keymap('n', '<leader>jbj', ':call jukit#splits#show_last_cell_output(1)<cr>')
-- keymap('n', '<leader>jbk', ':call jukit#splits#out_hist_scroll(1)<cr>')
-- keymap('n', '<leader>jbl', ':call jukit#splits#out_hist_scroll(0)<cr>')
-- keymap('n', '<leader>jbm', ':call jukit#splits#toggle_auto_hist()<cr>')
-- keymap('n', '<leader>jbn', ':call jukit#layouts#set_layout()<cr>')
-- keymap('n', '<leader>jbo', ':call jukit#send#section(0)<cr>')
-- keymap('n', '<cr>', ':call jukit#send#line()<cr>')
-- keymap('v', '<cr>', ':<C-U>call jukit#send#selection()<cr>')
-- keymap('n', '<leader>jbp', ':call jukit#send#until_current_section()<cr>')
-- keymap('n', '<leader>jbr', ':call jukit#send#all()<cr>')


--     -- Cell manipulation
-- keymap('n','<leader>jca', ':call jukit#cells#create_below(0)<cr>')
-- keymap('n','<leader>jcb', ':call jukit#cells#create_above(0)<cr>')
-- keymap('n','<leader>jcc', ':call jukit#cells#create_below(1)<cr>')
-- keymap('n','<leader>jcd', ':call jukit#cells#create_above(1)<cr>')
-- keymap('n','<leader>jce', ':call jukit#cells#delete()<cr>')
-- keymap('n','<leader>jcf', ':call jukit#cells#split()<cr>')
-- keymap('n','<leader>jcg', ':call jukit#cells#merge_above()<cr>')
-- keymap('n','<leader>jch', ':call jukit#cells#merge_below()<cr>')
-- keymap('n','<leader>jcj', ':call jukit#cells#move_up()<cr>')
-- keymap('n','<leader>jck', ':call jukit#cells#move_down()<cr>')
-- keymap('n','<leader>jcl', ':call jukit#cells#jump_to_next_cell()<cr>')
-- keymap('n','<leader>jcm', ':call jukit#cells#jump_to_previous_cell()<cr>')
-- keymap('n','<leader>jcn', ':call jukit#cells#delete_outputs(0)<cr>')
-- keymap('n','<leader>jco', ':call jukit#cells#delete_outputs(1)<cr>')

-- keymap('n', '<leader>np', ':call jukit#convert#notebook_convert("jupyter-notebook")<cr>')
-- keymap('n', '<leader>ht', ':call jukit#convert#save_nb_to_file(0,1,"html")<cr>')
-- keymap('n', '<leader>rht', ':call jukit#convert#save_nb_to_file(1,1,"html")<cr>')
-- keymap('n', '<leader>pd', ':call jukit#convert#save_nb_to_file(0,1,"pdf")<cr>')
-- keymap('n', '<leader>rpd', ':call jukit#convert#save_nb_to_file(1,1,"pdf")<cr>')


lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }
lvim.lsp.installer.setup.automatic_installation = false
lvim.builtin.cmp.completion.keyword_length = 2
lvim.builtin.telescope.defaults.layout_config.width = 0.95
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 75
