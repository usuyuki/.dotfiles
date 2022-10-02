#!/bin/bash -eu
echo "○ golang ○"
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest

export GOPATH=$HOME/goi
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
echo $HOME/.asdf/asdf.sh >> ~/.bashrc
echo PATH=$PATH:$GOPATH/bin >> ~/.bashrc
echo PATH=$PATH:$GOPATH/bin >> ~/.bashrc