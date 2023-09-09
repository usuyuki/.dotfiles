jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# braveの自前ビルドは4,5時間かけてもbinをインストール
yay -S google-chrome slack-desktop brave-bin xfluxd  zoom figma-linux-bin visual-studio-code-bin tty-clock

# optional
# yay -S rpi-imager-bin postman-bin keybase-bin

# tty-clock i3wmでよく見るCUIの時計

# 不安定
# vscodeはpacmanでcodeを入れるとOSS版になるのだが、syncがうまく動かないのでMS版を入れる
# keybaseはpacmanで入れるとGUI無いのでAUR版を入れる

# 不要パッケージの削除
sudo yay -Yc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■oud
