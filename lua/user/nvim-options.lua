vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
-- vim.opt.shell = "/usr/local/bin/oh-my-posh"
--vim.api.nvim_command("autocmd vimenter * highlight cursorlinenr guifg=white guibg=none")
vim.api.nvim_command("autocmd FileType c,cpp setlocal foldmethod=syntax")
vim.api.nvim_command([[
   hi default UfoFoldedFg guifg=Normal.foreground
   hi default UfoFoldedBg guibg=Folded.background
   hi default link UfoPreviewSbar PmenuSbar
   hi default link UfoPreviewThumb PmenuThumb
   hi default link UfoPreviewWinBar UfoFoldedBg
   hi default link UfoPreviewCursorLine Visual
   hi default link UfoFoldedEllipsis Comment
   hi default link UfoCursorFoldedLine CursorLine
]])

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
