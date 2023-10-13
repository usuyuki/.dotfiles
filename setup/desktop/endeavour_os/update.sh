# sudo pacman -Syu # yay側の内部でpacman -Syuも実行されるので不要
# 3世代前まで残しておく https://solist.work/blog/posts/pacman/
yay -Syu --nodiffmenu
# パッケージのキャッシュで一番新しい3つのバージョンを残して後を全て削除
paccache -r
# アンインストールしたパッケージのキャッシュを全て削除
paccache -ruk0
eos-update
