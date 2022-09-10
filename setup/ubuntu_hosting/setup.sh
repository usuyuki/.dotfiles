# 最低限のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl

# dotfilesのインストール
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/init.sh)"
#ここからこのリポジトリの中身が使える


# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh
sh ~/.dotfiles/components/linux/debian/serverStore.sh

# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# asdf設定
sh ~/.dotfiles/components/linux/debian/asdf.sh

yarn global add git-open
#シェルの再起動
exec $SHELL -l