require("chatgpt").setup {
  welcome_message = "welcome_message", -- set to "" if you don't like the fancy godot robot
  loading_text = "loading",
  question_sign = "",               -- you can use emoji if you want e.g. 🙂
  answer_sign = "ﮧ",                 -- 🤖
  max_line_length = 120,
  yank_register = "+",
  chat_layout = {
    relative = "editor",
    position = "50%",
    size = {
      height = "80%",
      width = "80%",
    },
  },
  settings_window = {
    border = {
      style = "rounded",
      text = {
        top = " settings ",
      },
    },
  },
  chat_window = {
    filetype = "chatgpt",
    border = {
      highlight = "floatborder",
      style = "rounded",
      text = {
        top = " chatgpt ",
      },
    },
  },
  chat_input = {
    prompt = "  ",
    border = {
      highlight = "floatborder",
      style = "rounded",
      text = {
        top_align = "center",
        top = " prompt ",
      },
    },
  },
  openai_params = {
    model = "text-davinci-003",
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 300,
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  openai_edit_params = {
    model = "code-davinci-edit-001",
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  keymaps = {
    close = { "<c-c>", "<esc>" },
    yank_last = "<c-y>",
    scroll_up = "<c-k>",
    scroll_down = "<c-j>",
    toggle_settings = "<c-o>",
    new_session = "<c-n>",
    cycle_windows = "<c-l>",
  },
}
