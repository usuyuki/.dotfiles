jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# Homebrewの導入
# https://brew.sh/ja/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# シンボリックリンク
sh ~/.dotfiles/components/linux/common/link.sh

# mise自体のインストール
sh ~/.dotfiles/components/linux/arch/common/core/install_mise.sh

# miseの導入
sh ~/.dotfiles/components/linux/arch/common/core/run_mise.sh

# # zshの導入
# sh ~/.dotfiles/components/linux/arch/common/core/install_zsh.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
