# 最低限のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl

# dotfilesのインストール
# マウントしているのでクローン不要
#ここからこのリポジトリの中身が使える

# 基本設定
sh ~/.dotfiles/components/linux/debian/settings.sh

# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/independency/todo.sh


#シェルの再起動
exec $SHELL -l

