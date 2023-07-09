jobName="Install NeoVim"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

sudo pacman -S neovim

# AstroNvim依存 https://github.com/AstroNvim/AstroNvim#-requirements
cargo install tree-sitter-cli

#
# AstroNvimの依存系ここから
# https://astronvim.com/
#

# node→他でインストールするので不要
# python→他でインストールするので不要
# lazygit→別でインストールするので不要！
# bottom→別でインストールするので不要！

#  nerd-fonts←全部入れるのは激重なので要調整
# git clone https://github.com/ryanoasis/nerd-fonts
# nerd-fonts/install.sh

# Tree-sitter CLI
# このタイミングではnpmが無いので、終了後に実行させるようにechoで伝えてある
# npm install -y tree-sitter-cli

# AstroNvimのダウンロード
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# AstroNvimの個人用設定をダウンロード
git clone https://github.com/usuyuki/AstroNvimUserSettings ~/.config/nvim/lua/user

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
