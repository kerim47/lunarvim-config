local g = vim.g
if vim.fn.has('nvim') == 1 then
    vim.g.python3_host_prog = '/usr/bin/python3'
else
    vim.cmd('set pyxversion=3')

    -- OSX
    vim.cmd('set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/Python')

    -- Windows
    vim.cmd('set pythonthreedll=python37.dll')
    vim.cmd('set pythonthreehome=C:\\Python37')
end
g.jukit_in_style = 2
g.jukit_max_size = 20
g.jukit_show_prompt = 1
g.jukit_save_output = 0
g.jukit_clean_outhist_freq = 60 * 10

g.jukit_output_bg_color = g.jukit_output_bg_color or ''
g.jukit_output_fg_color = g.jukit_output_fg_color or ''
g.jukit_outhist_bg_color = g.jukit_outhist_bg_color or '#090b1a'
g.jukit_outhist_fg_color = g.jukit_outhist_fg_color or 'gray'
g.jukit_output_new_os_window = 0
g.jukit_outhist_new_os_window = 0
g.jukit_savefig_dpi = 150


g.jukit_mpl_block = 1
g.jukit_custom_backend = -1
g.jukit_mpl_style = vim.fn.globpath(vim.fn.expand("~/.local/share/lunarvim/site/pack/lazy/opt/vim-jukit"), "helpers/matplotlib-backend-kitty/backend.mplstyle")
g.jukit_mpl_block = 1
g.jukit_inline_plotting = 1
g.jukit_shell_cmd = 'ipython3'
g.jukit_terminal = 'kitty'
g.jukit_auto_output_hist = 1
g.jukit_use_tcomment = 1
g.jukit_comment_mark = '#'
g.jukit_mappings = 1
g.jukit_mappings_ext_enabled = {'py', 'ipynb'}
g.jukit_notebook_viewer = 'jupyter-notebook'
g.jukit_convert_overwrite_default = -1
g.jukit_convert_open_default = -1
g.jukit_file_encodings = 'utf-8'
g.jukit_pdf_viewer='xdg-open'

vim.g.jukit_highlight_markers = 1
vim.g.jukit_enable_textcell_bg_hl = 1
vim.g.jukit_enable_textcell_syntax = 1
vim.g.jukit_hl_ext_enabled = {'py', 'ipynb'}

g.jukit_layout= {
  split = 'horizontal',
  p1 = 0.65,
  val = {
    'file_content',
    {
      split = 'vertical',
      p1 = 0.65,
      val = {'output', 'output_history'}
    },
  }
}
-- Bu, aşağıdaki bölme düzenine neden olur:
--
--  ______________________________________
-- |                      |               |
-- |                      |               |
-- |                      |               |
-- |                      |               |
-- |                      |     output    |
-- |                      |               |
-- |                      |               |
-- |    file_content      |               |
-- |                      |_______________|
-- |                      |               |
-- |                      |               |
-- |                      | output_history|
-- |                      |               |
-- |                      |               |
-- |______________________|_______________|
--


-- Sözlük anahtarları:
-- 'split': 'val' içinde belirtilen iki bölmenin yönü. 'horizontal' veya 'vertical' olabilir.
-- 'val': Yukarıdaki iki seçeneği uygulamak için belirtilen iki bölme listesi.
-- Bu listedeki öğelerden biri bir dize olmalı ve biri sözlük olmalıdır. 'dış' sözlük için
-- biri dize, biri sözlük olmalıdır, 'iç' sözlük için ise iki öğe de dize olmalıdır.
-- Üç dize farklı olmalı ve şunlardan biri olabilir: 'file_content', 'output', 'output_history'
--
-- Hiçbir düzen kullanmak istemiyorsanız, `g_jukit_layout = -1` olarak belirtin.
