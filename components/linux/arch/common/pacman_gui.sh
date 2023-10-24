jobName="Install From Pacman GUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# これが入る前に入っていることが期待されるソフトウェア:git,curl,vim
sudo pacman -S discord imagemagick slop xfce4-clipman-plugin blueberry alacritty redshift

# opionally
sudo pacman -S gnuplot inkscape gimp direnv libreoffice-fresh libreoffice-fresh-ja

# https://github.com/naelstrof/slop スクショ撮るやつ
# https://github.com/alacritty/alacritty
# xfce4-clipman-pluginはクリップボード履歴
# blueberryはBluetooth用のやつ(まだ使ってない)
# redshiftはナイトモードのやつ(xfluxdは効果がなかった)

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
