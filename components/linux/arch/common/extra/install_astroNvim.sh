jobName="Install NeoVim"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# neovimはpacmanで既に入っている想定

#
# AstroNvimの依存系ここから
# https://astronvim.com/
#
# nerd-fonts無いと見た目がひどすぎる
# これはintall_fontsで設定
# sudo pacman -S nerd-fonts

# AstroNvim依存 https://github.com/AstroNvim/AstroNvim#-requirements
rustup default stable
cargo install tree-sitter-cli

# node→他でインストールするので不要
# python→他でインストールするので不要
# lazygit→別でインストールするので不要
# bottom→別でインストールするので不要

# AstroNvim
git clone git@github.com:usuyuki/astronvim_usuyuki.git ~/.config/nvim
# dotfiles-secretも一緒にいれる
git clone git@github.com:usuyuki/.dotfiles-secret.git ~/.dotfiles-secret

echo "やること"
echo "1. :CopilotAuth"
echo "2. :WakaTimeApiKey"

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
