jobName="Install From Pacman"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# 最初から入ってる:git,yay,curl,make,wget,
sudo pacman -S discord vim neofetch neovim tree tig ripgrep lazygit gdu bottom git-delta fd peco ranger zellij imagemagick slop xfce4-clipman-plugin blueberry alacritty direnv xclip redshift felix-rs xdotool

# opionally
sudo pacman -S gnuplot inkscape gimp obs-studio

# wasm関連
sudo pacman -S llvm wasmer wabt

# https://github.com/BurntSushi/ripgrep
# https://github.com/jesseduffield/lazygit
# https://github.com/dundee/gdu
# https://github.com/ClementTsang/bottom
# https://github.com/dandavison/delta
# https://github.com/sharkdp/fd
# https://github.com/peco/peco
# https://github.com/ranger/ranger
# https://github.com/zellij-org/zellij
# https://github.com/kyoheiu/felix
# https://github.com/naelstrof/slop スクショ撮るやつ
# https://github.com/direnv/direnv
# https://github.com/alacritty/alacritty
# xfce4-clipman-pluginはクリップボード履歴
# blueberryはBluetooth用のやつ(まだ使ってない)
# xclipはneovimとOSのクリップボード共有のために使用 https://github.com/astrand/xclip
# redshiftはナイトモードのやつ(xfluxdは効果がなかった)

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
