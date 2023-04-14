echo "bottomのインストール-🎁→🗃→🎉"
# brewでもインストール可能
# bottom(x86-64)
(cd ~/ && curl -LO https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb)
sudo dpkg -i ~/bottom_0.8.0_amd64.deb
rm -rf ~/bottom_0.8.0_amd64.deb

<< PACKAGE_INFO 
🎁パッケージ名: bottom
🐙GitHub: https://github.com/ClementTsang/bottom
📰概要: CPU使用率など見やすくするやつ

📒使い方・備考📒

```
bottom
```
