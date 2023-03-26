echo "lazygitのインストール-🎁→🗃→🎉"
wget -O ~/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_0.37.0_Linux_x86_64.tar.gz"
tar xf ~/lazygit.tar.gz
sudo install ~/lazygit /usr/local/bin
rm -rf ~/lazygit.tar.gz ~/lazygit
