-- lvim.format_on_save ayarları
lvim.format_on_save = {
  enabled = true,
  pattern = "*.c",
  timeout = 1000,
}

function Toggle_auto_save()
  -- otomatik kaydetme ayarlarını lvim.format_on_save ayarlarına eşitleyin
  if lvim.format_on_save.enabled then
    lvim.format_on_save = {
      enabled = false,
      pattern = "*.c",
      timeout = 1000,
    }
    print("format_on_save off")
  else
    lvim.format_on_save = {
      enabled = true,
      pattern = "*.c",
      timeout = 1000,
    }
    print("format_on_save on")
  end
end
vim.api.nvim_set_keymap('n', '<leader>sa', ':lua Toggle_auto_save()<CR>', { noremap = true })
-- lvim.format_on_save = true
-- lvim.lint_on_save = true
-- lvim.reload_config_on_save = true  -- to disable iccns and use a minimalist setup, uncomment the following11
-- FIXME:
-- BUG::
-- FIXIT:
-- ISSUE:
-- TODO:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
