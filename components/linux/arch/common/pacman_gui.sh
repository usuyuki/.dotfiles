jobName="Install From Pacman GUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# これが入る前に入っていることが期待されるソフトウェア:git,curl,vim
sudo pacman -S discord imagemagick slop xfce4-clipman-plugin blueberry alacritty redshift evince

# opionally
sudo pacman -S gnuplot inkscape gimp direnv libreoffice-fresh libreoffice-fresh-ja xfce4-power-manager kwalletmanager zed

# https://github.com/naelstrof/slop スクショ撮るやつ
# https://github.com/alacritty/alacritty
# xfce4-clipman-pluginはクリップボード履歴
# blueberryはBluetooth用のやつ(まだ使ってない)
# redshiftはナイトモードのやつ(xfluxdは効果がなかった)
# evinceはPDFビューワー なぜかArchのブラウザ全部でPDFのコメントや注釈が読めないので入れる
# xfce4-power-manager 蓋閉じてスリープとか，電力管理とか，接続デバイスの電池(バッテリー)とか、画面の明るさも管理してくれる
# kwalletmanager kwalletの鍵登録に必要
# zedは最近話題のエディタ

# Bluetoothはyayでblueberry入れるだけでなくて下記も必要
# sudo systemctl start bluetooth
# sudo systemctl eanble bluetooth
#
echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
