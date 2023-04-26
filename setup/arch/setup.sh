#
# PGP鍵の生成やデフォルトユーザーの設定は済んでいる状態を想定
# WSLの場合の参考→https://www.asobou.co.jp/blog/web/archilinux-on-wsl2
#

# 国内サーバーへ
sed -i.dist \
    -e 's/^Server/#Server/g' \
    -e 's!#Server = \(https\?://.*\?\.jp\)!Server = \1!g' \
    /etc/pacman.d/mirrorlist

# yayのインストール
sudo pacman -Syyuu --needed git base-devel
(git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si)

