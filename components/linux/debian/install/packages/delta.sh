# delta
# gitのdiffを見やすくしてくれるやつ
# https://github.com/dandavison/delta 
echo "deltaのインストール---"
wget https://github.com/dandavison/delta/releases/download/0.15.1/git-delta_0.15.1_amd64.deb
sudo dpkg -i git-delta_0.15.1_amd64.deb
rm -rf git-delta_0.15.1_amd64.deb
