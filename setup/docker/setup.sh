# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/common/link.sh

# 基本設定
sh ~/.dotfiles/components/linux/debian/settings.sh

# 最低限のインストール(先にシンボリックリンクと設定させることでapt以外でエラー止まりでも最低限できるようにする)
# (本当はコンポーネントで分けたいが、devContainerで必要なものが少ないのでここに)

apt -y update
apt -y upgrade
apt -y install build-essential git curl peco 

sudo apt -y autoremove
#シェルの再起動
exec $SHELL -l

