jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# braveの自前ビルドは4,5時間かけてもbinをインストール
yay -S visual-studio-code-bin google-chrome slack-desktop brave-bin xfluxd


# optional
yay -S rpi-imager-bin postman-bin keybase-bin tty-clock zoom figma-linux-bin wps-office

# tty-clock i3wmでよく見るCUIの時計

# 不安定
# vscodeはpacmanでcodeを入れるとOSS版になるのだが、syncがうまく動かないのでMS版を入れる
# keybaseはpacmanで入れるとGUI無いのでAUR版を入れる

# 不要パッケージの削除
sudo yay -Yc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■oud
