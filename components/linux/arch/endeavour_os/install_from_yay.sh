jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# update and upgtrade
sudo yay -Syyu

sudo yay -S google-chrome brave

# 不要パッケージの削除
sudo yay -Yc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
