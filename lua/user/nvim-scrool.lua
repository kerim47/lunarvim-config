require('neoscroll').setup({
    -- Set any options as needed
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<M-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
t['<M-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}
t['<M-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '450'}}
t['<M-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450'}}
t['<M-y>'] = {'scroll', {'-0.10', 'false', '100'}}
t['<M-e>'] = {'scroll', { '0.10', 'false', '100'}}
t['zt']    = {'zt', {'250'}}
t['zz']    = {'zz', {'250'}}
t['zb']    = {'zb', {'250'}}

require('neoscroll.config').set_mappings(t)
