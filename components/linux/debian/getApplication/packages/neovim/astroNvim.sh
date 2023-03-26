# astroNvim
# neovimを現代風IDEにするいい感じのやつ
# https://github.com/AstroNvim/AstroNvim
echo "astroNvimのインストール-🎁→🗃→🎉"

# fuseはneovimを公式の手法でインストールするために必要
sudo apt install -y fuse


# neovimインストール aptだと古いのが入る https://github.com/neovim/neovim/wiki/Installing-Neovim
# curlでダウンロード先を指定するのが厄介なのでサブシェルでごまかす
(cd ~/ && curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage )
chmod u+x ~/nvim.appimage
~/nvim.appimage --appimage-extract
rm -rf ~/nvim.appimage
sudo mv ~/squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# AstroNvimのダウンロード
git clone https://github.com/kabinspace/AstroVim ~/.config/nvim

#
# AstroNvimの依存系ここから
# https://astronvim.com/
#

# node→他でインストールするので不要
# python→他でインストールするので不要
# lazygit→別でインストールするので不要！

#  nerd-fonts←全部入れるのは激重なので要調整
# git clone https://github.com/ryanoasis/nerd-fonts
# nerd-fonts/install.sh

# Tree-sitter CLI 
# このタイミングではnpmが無いので、終了後に実行させるようにechoで伝えてある
# npm install -y tree-sitter-cli

# ripgrep 
sudo apt install -y ripgrep


# go DiskUsage()
sudo apt install -y gdu

# bottom(x86-64)
(cd ~/ && curl -LO https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb)
sudo dpkg -i ~/bottom_0.8.0_amd64.deb
rm -rf ~/bottom_0.8.0_amd64.deb

#
# AstroNvimの依存系ここまで
#
