jobName="Install From Pacman"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# update and upgtrade
sudo pacman -Syyu

# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える

# 最初から入ってる:git,yay,
sudo pacman -S code git

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
