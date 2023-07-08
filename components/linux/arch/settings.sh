# 国内サーバーへ
sed -i.dist \
	-e 's/^Server/#Server/g' \
	-e 's!#Server = \(https\?://.*\?\.jp\)!Server = \1!g' \
	/etc/pacman.d/mirrorlist
