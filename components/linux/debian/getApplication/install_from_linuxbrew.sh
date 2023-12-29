# sudoが使えないLinux環境で最低限どの生活をするためのシェルスクリプト
# homebrewは導入済み前提
# また，ここだけすべて.bashrc前提

sh ~/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/zellij.sh

# brew系統
brew install difftastic # diff綺麗にする
brew install tree
brew install gtop
brew install rtx jq
# rtxが内部でjq使うことあるのでjqも入れる
# linuxではcaskでGUIソフトウェア入れられない(mac専用)
# brew install cask
# brew install --cask alacritty
brew install ranger
brew install tig peco

# vidirとかvipeがセットになったmoreutils(逆にvidir単体ではbrew installできない)
brew install moreutils
# CLIでmarkdownをきれいに見れるやつ https://github.com/charmbracelet/glow
brew install glow

# 対話シェルを実現するfzf https://github.com/junegunn/fzf
# リッチなRust製cat https://github.com/sharkdp/bat
brew install fzf brew bat
$(brew --prefix)/opt/fzf/install
echo 'export FZF_CTRL_T_COMMAND="rg --files --hidden --follow --glob \"!.git/*\""' >>~/.bashrc
echo 'export FZF_CTRL_T_OPTS="--preview \"bat  --color=always --style=header,grid --line-range :100 {}\""' >>~/.bashrc

brew install git-delta
brew install starship
# WebAssembly関連
brew install wabt
brew install wasmer
# esp32ビルド関連
brew install llvm wasm-micro-runtime

# esp32 rust
brew tap riscv-software-src/riscv
brew install riscv-tools

# esp-idf
brew install cmake ninja dfu-util # 依存
sh ~/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/esp-idf.sh

# tinygo
brew install avrdude

# platformio
brew install platformio

#tinygo環境
brew tap tinygo-org/tools
brew install tinygo

# micropython
# pip install adafruit-ampy esptool
brew install picocom #シリアル通信でメッセージ遅れるやつ

# mruby
brew install mruby

# starshipのパスの追加
echo 'eval "$(starship init bash)"' >>~/.bashrc

# linuxでもbrewでfontを入れたい
brew tap homebrew/linux-fonts
brew install font-udev-gothic-nf

brew install neovim
# astroNvim依存
brew install ripgrep
brew install jesseduffield/lazygit/lazygit
brew install bottom
brew install -f gdu

# 便利ツール系
brew install thefuck zoxide tlrc exa bandwhich speedtest-cli figlet
# thefuckの追加
echo 'eval "$(thefuck --alias)"' >>~/.bashrc
# nodeを入れる
