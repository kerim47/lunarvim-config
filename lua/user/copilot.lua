-- copilot.vim settings

-- additional plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
vim.api.nvim_set_keymap("i", "<leader-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = false
vim.g.copilot_tab_fallback = "<Tab>"
-- local cmp = require "cmp"
-- lvim.builtin.cmp.mapping["<tab>"] = function()
--   if cmp.visible() then
--     cmp.select_next_item()
--   else
--     local copilot_keys = vim.fn["copilot#accept"]()
--     vim.api.nvim_feedkeys(copilot_keys, "i", true)
--   end
-- end

-- print hello world
-- create a new folder

vim.g.copilot_filetypes = {
  ["*"] = false,
  ["javascript"] = true,
  ["typescript"] = true,
  ["lua"] = true,
  ["rust"] = true,
  ["c"] = true,
  ["c#"] = true,
  ["c++"] = true,
  ["go"] = true,
  ["python"] = true,
}
vim.g.copilot_suggestion_highlight = "CopilotSuggestion"
vim.g.copilot_suggestion_prefix = " "
vim.g.copilot_suggestion_suffix = " "
vim.g.copilot_suggestion_separator = " "
vim.g.copilot_suggestion_max_width = 80
vim.g.copilot_suggestion_max_height = 10
vim.g.copilot_suggestion_max_lines = 10
vim.g.copilot_suggestion_max_chars = 80


-- vim.api.nvim_set_keymap("n", "<Tab>", '<Tab>', { silent = true, expr = true })

function ToggleCopilot()
  if vim.b.copilot_enabled ~= nil and vim.b.copilot_enabled ~= false then
    vim.b.copilot_enabled = false
    vim.api.nvim_echo({ { "Copilot disabled", "None" } }, false, {})
    vim.api.nvim_set_keymap("i", "<Tab>", '<Tab>', { silent = true, expr = true })
  else
    vim.b.copilot_enabled = true
    vim.api.nvim_echo({ { "Copilot enabled", "None" } }, false, {})
    vim.api.nvim_set_keymap("i", "<Tab>", 'vim.fn["copilot#accept"]() .. "<CR>"', { silent = true, expr = true })
  end
end


vim.api.nvim_set_keymap("n", "<Leader>bn", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })
-- vim.cmd("highlight CopilotSuggestion guifg=#ffffff ctermfg=8")
