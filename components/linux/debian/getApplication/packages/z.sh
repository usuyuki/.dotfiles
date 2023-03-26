echo "zのインストール-🎁→🗃→🎉"
mkdir ~/z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z/z.sh
chmod +x ~/z/z.sh

# bashrcに追記
echo " " >> ~/.bashrc
echo . $HOME/z/z.sh >> ~/.bashrc

<< PACKAGE_INFO 
🎁パッケージ名: z 
🐙GitHub: https://github.com/rupa/z
📰概要: cd の履歴を使うことで、正式なパスでなくてもいい感じに過去移動した場所に遷移できる

📒使い方・備考📒
j log的な
※本来は z だが、alias 貼って打ちやすい j にしている

PACKAGE_INFO
