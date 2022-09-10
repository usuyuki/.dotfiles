jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# いつも使うソフトウェアのインストール
# ------
sudo apt install -y make htop peco ripgrep 

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/neovim.sh

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/asdf.sh

echo "----------------------------"
echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "----------------------------"