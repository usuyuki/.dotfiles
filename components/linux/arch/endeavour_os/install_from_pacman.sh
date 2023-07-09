jobName="Install From Pacman"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える
# rtxがrust依存なのでrustだけは先に入れる
sudo pacman -S rustup
rustup default stable
# rtxの導入(rustでビルドされるっぽい)
(git clone https://aur.archlinux.org/rtx.git && cd rtx && makepkg -si)
echo 'eval "$(~/bin/rtx activate bash)"' >>~/.bashrc

# rtxで各種言語をインストール
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx.sh

# neovimのインストール
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_neovim.sh

# 最初から入ってる:git,yay,
sudo pacman -S code vim neofetch

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
