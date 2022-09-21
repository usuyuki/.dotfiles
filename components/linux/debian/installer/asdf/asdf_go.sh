#!/bin/bash -eu
echo "○ golang ○"
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest