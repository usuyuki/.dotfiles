jobName="Install From Pacman CUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# これが入る前に入っていることが期待されるソフトウェア:git,curl,vim
sudo pacman -S inetutils unzip wget make neofetch neovim zellij tree tig ripgrep lazygit gdu bottom git-delta fd peco ranger imagemagick xclip felix-rs xdotool xdotool pacman-contrib cronie less thefuck tldr exa speedtest-cli

# opionally
sudo pacman -S direnv terraform progress bandwhich figlet

# android実機デバッグするなら
sudo pacman -S android-udev
# tinygo
sudo pacman -S tinygo

# inetutilsはpingやhostnameなどの基本セットが入ってるやつ
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
# https://github.com/direnv/direnv
# felix-rs https://github.com/kyoheiu/felix vimライクな操作ができるファイルマネージャー
# fzf ll | fzf とかでさがせる https://github.com/junegunn/fzf
# xclipはneovimとOSのクリップボード共有のために使用 https://github.com/astrand/xclip
# pacman-contrib はpaccacheを使うために必要
# https://github.com/nvbn/thefuck  thefuck コマンドタイプミス後にfuckとうつと修正版を実行してくれる
# cronie crontab的なやつ systemctl start cronie で起動必要
# tldr manを見やすくしたやつ https://github.com/tldr-pages/tldr
# exa ls見やすく https://github.com/ogham/exa

# option

# progress→cvコマンドで実行中のcpの進捗が見れるようになる
# ネットワークの速度とかを細かく見れる https://github.com/imsnif/bandwhich
# figlet https://github.com/cmatsuoka/figlet AAかける
echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
