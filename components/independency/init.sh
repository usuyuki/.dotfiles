sudo sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl
git clone https://github.com/usuyuki/.dotfiles.git ~/.dotfiles
