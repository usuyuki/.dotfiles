jobName="Install From Yay(AUR)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

mkdir ~/z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z/z.sh
chmod +x ~/z/z.sh

# bashrcに追記
echo . $HOME/z/z.sh >>~/.bashrc
echo . $HOME/z/z.sh >>~/.zshrc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"

