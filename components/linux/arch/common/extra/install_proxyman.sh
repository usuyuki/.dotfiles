#!/bin/bash

# ダウンロード用の一時ディレクトリを作成
mkdir -p ~/proxyman_temp
cd ~/proxyman_temp

# ProxyManのバージョン3.1.2をダウンロードして展開
wget https://github.com/himanshub16/ProxyMan/archive/refs/tags/v3.1.2.tar.gz
tar -xzvf v3.1.2.tar.gz

# ProxyManディレクトリに移動
cd ProxyMan-3.1.2

# ./installスクリプトを実行
chmod +x install
./install
# sh ./main.sh
chmod +x ~/.proxyman/proxyman

# 一時ディレクトリをクリーンアップ
cd ~
rm -rf ~/proxyman_temp

