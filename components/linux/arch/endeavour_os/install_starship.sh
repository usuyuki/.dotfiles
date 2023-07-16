# ターミナルを洒落た感じできるRust製のプロンプト
# nerd fontが依存
# https://starship.rs/ja-jp/
# zshrcに追記
sudo pacman -S starship
echo 'eval "$(starship init zsh)"' >>~/.zshrc
