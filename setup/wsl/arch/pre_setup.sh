jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# pacman管理のアップデートとアップグレード
sudo pacman -Syu
# デフォルトのエディタをvimにするので先に入れておく miseでunzip使う言語いるのでunzip
sudo pacman -S vi vim unzip

# シンボリックリンク
sh ~/.dotfiles/components/linux/common/link.sh

# yayのインストール
sh ~/.dotfiles/components/linux/arch/common/core/install_yay.sh

# mise自体のインストール
sh ~/.dotfiles/components/linux/arch/common/core/install_mise.sh

# Arch基本の設定
sh ~/.dotfiles/components/linux/arch/common/settings.sh
sh ~/.dotfiles/components/linux/arch/wsl/settings.sh

# miseの導入
sh ~/.dotfiles/components/linux/arch/common/core/run_mise.sh

# zshの導入()
sh ~/.dotfiles/components/linux/arch/common/core/install_zsh.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
