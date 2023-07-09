jobName="Install From Pacman"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# pacman管理のアップデートとアップグレード
sudo pacman -Syyu

# 日本語入力できるようにする
sudo pacman -S fcitx-im fcitx-mozc

# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える

# 最初から入ってる:git,yay,
sudo pacman -S code vim neofetch

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
