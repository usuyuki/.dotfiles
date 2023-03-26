#!/bin/bash -eu
echo "○ ruby ○"
asdf plugin add rust
asdf install ruby latest
asdf global ruby latest