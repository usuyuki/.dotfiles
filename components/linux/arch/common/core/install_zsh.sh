# fish用はconfig.fishに直書きなのでconifで管理
#
# bashからzshへ変更
#
sudo pacman -S zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting
chsh -s /bin/zsh

#
# bashからfishへ変更
#
# fishをデフォルトのシェルにするのはArchでは非推奨らしいので、インタラクティブシェルとして使う
# sudo pacman -S zsh fish fisher
# chsh -s /bin/fish ←デフォルトのshellにする場合
# fishBoot="
# # fishをインタラクティブシェルとして使う
# if [ -z "$BASH_EXECUTION_STRING" ]; then exec fish; fi
# "
#bashrcに追記
# echo "$fishBoot" >>~/.bashrc
