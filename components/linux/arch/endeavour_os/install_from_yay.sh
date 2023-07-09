jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

yay -S google-chrome slack-desktop
# 不安定
# yay -S docker-desktop brave

# 不要パッケージの削除
sudo yay -Yc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
