#!/bin/bash -eu
echo "○ rust ○"
asdf plugin add rust
asdf install rust latest
asdf global rust latest
echo "cargoとrustc、rustupがセットで入ります"
rustup component add clippy rls rust-analysis rust-src rust-docs rustfmt
