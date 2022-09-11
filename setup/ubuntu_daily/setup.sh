# 基本設定
sh ~/.dotfiles/components/linux/debian/settings.sh
# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh



# 必要事項のメッセージ
sh ~/.dotfiles/components/independency/todo.sh


sudo apt -y autoremove
#シェルの再起動
exec $SHELL -l
