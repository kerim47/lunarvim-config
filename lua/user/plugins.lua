lvim.plugins = {
  { "tpope/vim-repeat" },
  -- { "github/copilot.vim" },
  -- { "zbirenbaum/copilot.lua",},
  { "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },
  -- { "" },
  {
  "mrjones2014/nvim-ts-rainbow",
  },
  { "preservim/tagbar" },
  { "michaelb/sniprun", run = "bash ./install.sh 1" },
  { "codota/tabnine-nvim", run = "./dl_binaries.sh"},
  { "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" },
  { "luk400/vim-jukit"},
  { "gelguy/wilder.nvim" },
  { "ghifarit53/tokyonight-vim" },
  { "simrat39/symbols-outline.nvim"},
  { "jghauser/kitty-runner.nvim",
    config = function()
      require("kitty-runner").setup()
    end
  },
  {
    "Bryley/neoai.nvim",
    require = { "MunifTanjim/nui.nvim" },
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
    require("numb").setup {
      show_numbers = true, -- Enable 'number' for the window while peeking
      show_cursorline = true, -- Enable 'cursorline' for the window while peeking
    }
    end,
  },
  {
  "kevinhwang91/nvim-bqf",
  event = { "BufRead", "BufNew" },
  config = function()
  require("bqf").setup({
          auto_enable = true,
          preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
          },
          func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
          },
          filter = {
          fzf = {
          action_for = { ["ctrl-s"] = "split" },
          extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
          },
          })
  end,
},
  {
    "Mofiqul/vscode.nvim",
  },
  {"bfredl/nvim-ipy"},
  -- {"dccsillag/magma-nvim"},
  {
    "kiyoon/jupynium.nvim",
    -- build = "pip3 install --user .",
    build = "conda run --no-capture-output -n jupynium pip install .",
    enabled = vim.fn.isdirectory(vim.fn.expand "~/anaconda3/envs/jupynium"),
  },
  { "hrsh7th/nvim-cmp"},       -- optional, for completion
  -- { "rcarriga/nvim-notify"},   -- optional
  { "stevearc/dressing.nvim"}, -- optional, UI for :JupyniumKernelSelect
  {
    "phaazon/hop.nvim",
    event = "bufread",
    branch = 'v2', -- optional but strongly recommended
    config = function()
    require'hop'.setup { keys = 'asdfghjkl' }
      -- you can configure Hop the way you like here; see :h hop-config
    end,
  },
  { "kdheepak/lazygit.nvim" },
  {
    "ggandor/lightspeed.nvim",
    event = "bufread",
  },
  {"rmagatti/goto-preview",
  config = function()
    require('goto-preview').setup {}
  end},
  {
    "windwp/nvim-spectre",
    event = "bufread",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        execution_message = {
        message = function() -- message to print on save
          return ("Kerim Bey " .. vim.fn.strftime("%H:%M:%S") .. "' da kaydedildi.")
          -- return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18, -- dim the color of `message`
        cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
      },
      debounce_delay = 325, -- saves the file at most every `debounce_delay` milliseconds
      trigger_events = {"TextChanged"--[[ , "InsertLeave" ]]},
    })
    end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "winscrolled",
  },
  {
    "folke/noice.nvim",
    -- Packer
    requires = {
      "muniftanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  { 'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async'
  },
  {
    "folke/todo-comments.nvim",
    rtquires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
  },
  { "mg979/vim-visual-multi" },
  -- {"jupyter-vim/jupyter-vim"},
  --   {'untitled-ai/jupyter_ascending.vim'},
  -- {'bfredl/nvim-ipy'},
  -- {'hkupty/iron.nvim'},
  -- {'gcballesteros/jupytext.vim'},
  -- {'kana/vim-textobj-line'},
  -- {'kana/vim-textobj-user'},
  -- {'gcballesteros/vim-textobj-hydrogen'},
}
-- })
-- require().setup({
--   background_colour = "#000000",
