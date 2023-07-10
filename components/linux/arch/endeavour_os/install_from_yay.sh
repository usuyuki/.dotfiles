jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# braveの自前ビルドは4,5時間かけてもbinをインストール
yay -S yay-bin google-chrome slack-desktop brave-bin
# 不安定
# yay -S docker-desktop brave

# 不要パッケージの削除
sudo yay -Yc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
