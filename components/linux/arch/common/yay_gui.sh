jobName="Install From Yay(AUR) CUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

yay -S visual-studio-code-bin brave-bin xfluxd

# optional
yay -S keybase-bin cursor-bin google-chrome
# ChromeはChrome MCP用で必要
# yay -S slack-desktop zoom figma-linux-bin

# さらにoptional
# yay -S postman-bin rpi-imager-bin  obs-studio android-studio

# 不安定
# vscodeはpacmanでcodeを入れるとOSS版になるのだが、syncがうまく動かないのでMS版を入れる
# keybaseはpacmanで入れるとGUI無いのでAUR版を入れる

# obs-studio-browserでないとOBSのソースにブラウザ使えないが、毎回ビルドするので除外
# yay -S obs-studio-browser

# ↓WPS Officeだとフォントが中華フォント優先になってしまう上に設定が永遠に開けないバグがある, さらにwps-office-mui-ja-jpが消えている
# yay -S wps-office

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
