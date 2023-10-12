jobName="Install From Yay(AUR) CUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

yay -S visual-studio-code-bin google-chrome slack-desktop brave-bin xfluxd

# optional
yay -S keybase-bin zoom figma-linux-bin wps-office

# さらにoptional
yay -S postman-bin rpi-imager-bin

# 不安定
# vscodeはpacmanでcodeを入れるとOSS版になるのだが、syncがうまく動かないのでMS版を入れる
# keybaseはpacmanで入れるとGUI無いのでAUR版を入れる

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■oud

