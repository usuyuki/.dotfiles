jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# pacman管理のアップデートとアップグレード
sudo pacman -Syu
# デフォルトのエディタをvimにするので先に入れておく
sudo pacman -S vim

# シンボリックリンク
sh ~/.dotfiles/components/linux/common/link.sh

# yayのインストール
sh ~/.dotfiles/components/linux/arch/common/core/install_yay.sh
# rtx自体のインストール
sh ~/.dotfiles/components/linux/arch/common/core/install_rtx.sh

# Arch基本の設定
sh ~/.dotfiles/components/linux/arch/common/settings.sh

# rtxの導入
sh ~/.dotfiles/components/linux/arch/common/core/install_from_rtx_before.sh

# zshの導入()
sh ~/.dotfiles/components/linux/arch/common/core/install_zsh.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
