#!/bin/bash -eu
echo "🧃 node 🧃"
sudo apt -y install dirmngr gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 18.16.0
asdf global nodejs 18.16.0
# yarnはnode経由が良さそう
# この2つはシェルスクリプトで実行できないので後でやるように催促する
# corepack enable
# asdf reshim nodejs
