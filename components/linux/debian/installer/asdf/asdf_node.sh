#!/bin/bash -eu
echo "○ node ○"
sudo apt -y install dirmngr gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts
# yarnはnode経由が良さそう
corepack enable
asdf reshim nodejs