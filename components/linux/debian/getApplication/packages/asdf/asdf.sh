
#!/bin/bash -eu
# asdfでバージョン管理する
jobName="Setup asdf"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/asdf_before.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/asdf_main.sh
# ↓これはシェルを再起動してから出ないと使えないので、終わってからのメッセージで実行するように誘導する
# sh ~/.dotfiles/components/linux/debian/getApplication/asdf_lang_installer.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"
