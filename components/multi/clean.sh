# TODO: update.shみたいにOSごとに分ける
# pacmanの削除は2世代前を残してupdate.shで行っている
# yayのcache全消し
yay -Scc
# 紐づいてないdocker imageを削除
docker image prune -f
# pnpmの使われてないパッケージ削除
pnpm store prune
