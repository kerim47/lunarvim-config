#  Lunarvim için yapılandırma dosyası



**LunarVim yolculuğunuzda yardımcı olacak configurasyonlar!**


LunarVim yolculuğunuzda yardımcı olacak configurasyonlar!

`lunarvim-config`, her bir dil için kendi git dalında bulunan `config.lua` dosyasıyla birlikte LunarVim için dil özel yapılandırmaların bir
koleksiyonudur. Daha detaylı bir yapılandırma için, LunarVim tarafından sağlanan örnek yapılandırmada otomatik komutlar,
ek eklentiler ve tuş bağlantıları gibi detayları ve daha fazlasını bulabilirsiniz.

[Lunarvim Github Sayfası](https://github.com/LunarVim/LunarVim)

Configurasyon dosyası `windows 11 wsl(ubuntu)` sistemine gore yapılandırmıştır.

Yapılandırılmış dosyayı indirmeden once gereksinimler yuklenmelidir. İstenilmeyen dosyalar  `~/.config/lvim/lua/user/plugins.lua` dosyasından silinebilir.

Eğer daha once kullanılmadıysanız aşağıdaki gibi ihtiyaçlarınızı goruntuleyebilirsiniz.


```vim
:checkhealth
```

Sonraki adımımızda pyhton desteğini kurmamız gerekiyor. (Node isteğe bağlı)

- Neovim python desteği

  ```sh
  pip install pynvim
  ```

- Neovim node desteği

  ```sh
  npm i -g neovim
  ```
Eğer jupyter kullanıcaksanız yapılandırma dosyasında kitty terminaline uygun olarak yapılandırılmıştır. 
Kitty terminali kullanılmaycaksa jupyter yapılandırma dosyasında `g.jukit_terminal = 'kitty'` kısmını bash olarak değiştirebilirsiniz.
Yapılandırmalar çoğunlukla `C, C++, Python, Jupyter, Markdown, lua, bash` vb. programlama diline uygun olarak yapılandırılmıştır.


### İndirme

```sh
$ git clone https://github.com/kerim47/lunarvim-config
$ mkdir -p /home/kerim/.config/lvim
$ cp ~/lunarvim-config ~/.config/lvim
```
Eğer herhangi bir konuda sıkıntı yaşıyorsanız lutfen sormaktan çekinmeyin.

## Bulunan Pluginler (Available plugins)

- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [github/copilot.vim](https://github.com/github/copilot.vim)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [preservim/tagbar](https://github.com/preservim/tagbar)
- [michaelb/sniprun](https://github.com/michaelb/sniprun)
- [codota/tabnine-nvim](https://github.com/codota/tabnine-nvim)
- [dccsillag/magma-nvim](https://github.com/dccsillag/magma-nvim)
- [luk400/vim-jukit](https://github.com/luk400/vim-jukit)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [ghifarit53/tokyonight-vim](https://github.com/ghifarit53/tokyonight-vim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [jghauser/kitty-runner.nvim](https://github.com/jghauser/kitty-runner.nvim)
- [Bryley/neoai.nvim](https://github.com/Bryley/neoai.nvim)
- [nacro90/numb.nvim](https://github.com/nacro90/numb.nvim)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- [Mofiqul/vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [bfredl/nvim-ipy](https://github.com/bfredl/nvim-ipy)
- [dccsillag/magma-nvim](https://github.com/dccsillag/magma-nvim)
- [kiyoon/jupynium.nvim](https://github.com/kiyoon/jupynium.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)
- [rmagatti/goto-preview](https://github.com/rmagatti/goto-preview)
- [windwp/nvim-spectre](https://github.com/windwp/nvim-spectre)
- [pocco81/auto-save.nvim](https://github.com/pocco81/auto-save.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [jupyter-vim/jupyter-vim](https://github.com/jupyter-vim/jupyter-vim)
- [untitled-ai/jupyter_ascending.vim](https://github.com/untitled-ai/jupyter_ascending.vim)
- [bfredl/nvim-ipy](https://github.com/bfredl/nvim-ipy)
- [hkupty/iron.nvim](https://github.com/hkupty/iron.nvim)
- [gcballesteros/jupytext.vim](https://github.com/gcballesteros/jupytext.vim)
- [kana/vim-textobj-line](https://github.com/kana/vim-textobj-line)
- [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)
- [gcballesteros/vim-textobj-hydrogen](https://github.com/gcballesteros/vim-textobj-hydrogen)





## Fontlar (isteğe bağlı) Fonts (Optional)

- [A nerd font](https://github.com/ryanoasis/nerd-fonts)

- [codicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf)
- [An emoji font](https://github.com/googlefonts/noto-emoji/blob/main/fonts/NotoColorEmoji.ttf)


# Lunarvim Configuration File (English)

**Configuration files that will assist you on your LunarVim journey!**

The `lunarvim-config` is a collection of language-specific configurations for LunarVim, each residing in its own git branch with a `config.lua` file. For more detailed configuration, you can find details, including automatic commands, additional plugins, keybindings, and more in the example configuration provided by LunarVim.

[Lunarvim Github Page](https://github.com/LunarVim/LunarVim)

The configuration file is tailored for the `Windows 11 WSL (Ubuntu)` system. Before downloading the configured file, make sure to install the requirements. Unwanted files can be removed from the `~/.config/lvim/lua/user/plugins.lua` file.

If you haven't used it before, you can check your requirements as follows:

```vim
:checkhealth
```

In the next step, we need to install Python support (Node is optional).

- Neovim Python support:

  ```sh
  pip install pynvim
  ```

- Neovim Node support:

  ```sh
  npm i -g neovim
  ```

If you will be using Jupyter, the configuration file is set up for the Kitty terminal. If you won't be using the Kitty terminal, you can change the `g.jukit_terminal = 'kitty'` part in the Jupyter configuration file to `bash`. Configurations are primarily set up for programming languages such as `C, C++, Python, Jupyter, Markdown, Lua, Bash`, and more.

If you encounter any issues, feel free to ask.
