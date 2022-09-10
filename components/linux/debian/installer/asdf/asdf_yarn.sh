#!/bin/bash -eu
echo "○ yarn ○"
asdf plugin add yarn
asdf install yarn latest
asdf global yarn latest