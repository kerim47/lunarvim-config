lvim.autocommands = {
  {
      "BufWinEnter", {
      pattern = { "*.c", "*.h" },
      callback = function()
        -- DYI editorconfig
        if vim.loop.cwd() == "/home/kerim/MainFolder/ProgrammingCodes/C/CodesWorks" then
          vim.cmd [[setlocal tabstop=2 shiftwidth=2]]
        end
      end
    },
  }
}

lvim.lsp.buffer_mappings.normal_mode['<C-j>'] = { vim.lsp.buf.hover, "Show documentation" }


--lvim.autocommands = {
--   { "bufenter", "filetype" },
--   {
--     desc = "open mini.map and exclude some filetypes",
--     pattern = { "*" },
--     callback = function()
--       local exclude_ft = {
--         "qf",
--         "nvimtree",
--         "toggleterm",
--         "telescopeprompt",
--         "alpha",
--         "netrw",
--       }

--       local map = require('mini.map')
--       if vim.tbl_contains(exclude_ft, vim.o.filetype) then
--         vim.b.minimap_disable = true
--         map.close()
--       elseif vim.o.buftype == "" then
--         map.open()
--       end
--     end,
--   },
-- }
