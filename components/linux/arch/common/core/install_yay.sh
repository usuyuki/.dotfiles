# https://github.com/Jguer/yay 公式のインストールに従う
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
rm -rf yay
