# 最低限のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl

# dotfilesのインストール
# マウントしているのでクローン不要
#ここからこのリポジトリの中身が使える

# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh




echo "■■■■■■■■■■"
echo "やることリスト";
echo "- nvimで:PackerInstall";
echo ". ~/.bashrc";

