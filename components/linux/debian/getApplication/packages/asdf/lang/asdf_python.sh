#!/bin/bash -eu
#gccが必要だがbuild-essentialで満たせる
echo "🧃 python 🧃"
asdf plugin add python
asdf install python latest
asdf global python latest
