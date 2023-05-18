--vim.cmd [[autocmd CursorMoved * if foldlevel('.') > 0 | silent! exe "norm! zv" | endif]]
--vim.cmd [[autocmd CursorMoved * if foldlevel('.') == 0 | silent! exe "norm! zM" | endif]]
-- vim.cmd [[autocmd TermOpen * lua vim.api.nvim_echo({{'Hoş geldiniz', 'Normal'}}, true, {})]]
-- fzf is just an example
vim.cmd("autocmd FileType bash setlocal nonumber")

local o=vim.o
local g=vim.g
local l=lvim
local lb=lvim.builtin

vim.cmd("colorscheme vscode")
l.log.level = "info"
lb.alpha.active = true
lb.alpha.mode = "dashboard"
lb.terminal.active = true
lb.nvimtree.setup.view.side = "left"
lb.nvimtree.setup.renderer.icons.show.git = false
lb.terminal.open_mapping = "<c-t>"
lb.terminal.execs[#lb.terminal.execs + 1] = { --[[ "zsh" ]] "bash", "<c-t>", "term", "float" }
lvim.transparent_window = false
lb.treesitter.auto_install = true
lb.treesitter.ignore_install = { "haskell" }
lb.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }
l.lsp.installer.setup.automatic_installation = false
lb.treesitter.auto_install = true
lb.cmp.completion.keyword_length = 2
lb.telescope.defaults.layout_config.width = 0.95
lb.telescope.defaults.layout_config.preview_cutoff = 75
o.foldcolumn = '1'
o.fillchars = [[eob: ,fold: ,foldopen:🡻,foldsep: ,foldclose:🡺]]
vim.cmd([[autocmd VimEnter * lua vim.b.copilot_enabled = false]])
g.loaded_perl_provider = 0
vim.opt.shell="/bin/bash"
lb.treesitter.rainbow.enable = true


function File_type()
  vim.cmd("call jukit#splits#output_and_history()")
  vim.cmd("call jukit#layouts#set_layout()")
end
-- Define a function to bind the key mappings if the terminal is kitty
function Setup_kitty_mappings()
  local filetype = vim.fn.expand('%:e')
  if filetype == 'ipynb' then
    vim.api.nvim_set_keymap("n", "<leader>oj", "<cmd>lua File_type()<CR>", { noremap = true })
  end
end



vim.cmd('autocmd BufEnter * lua Setup_kitty_mappings()')


-- " Dosya türünü ekrana yazdıran fonksiyon
-- function! FileTypeMsg()
--     echo "Dosya tipi: " & &filetype
-- endfunction

-- " Her dosya açıldığında FileTypeMsg() fonksiyonunu çalıştıran autocmd
-- autocmd BufReadPost * call FileTypeMsg()

C_comment= require("user.functions").comment_text
vim.api.nvim_set_keymap("v", "n", ":lua c_comment('*')<CR>", {noremap = true, silent = true})
local function print_table_values(tbl)
  for _, value in ipairs(tbl) do
    if type(value) == "table" then
      print_table_values(value)
    else
      print(value)
    end
  end
end
print_table_values(lvim.plugins)

