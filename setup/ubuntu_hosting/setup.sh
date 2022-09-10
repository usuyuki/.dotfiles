# 最低限のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl

# dotfilesのインストール
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/init.sh)"
#ここからこのリポジトリの中身が使える


# 必要なものをインストール
sudo apt install -y make htop peco ripgrep 

# シンボリックリンク貼る

sh ~/.dotfiles/setup/ubuntu_hosting/setup.sh

# asdf設定
sudo apt install -y curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

yarn global add git-open