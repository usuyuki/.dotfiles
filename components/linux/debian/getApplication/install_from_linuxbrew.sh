# sudoが使えないLinux環境で最低限どの生活をするためのシェルスクリプト
# homebrewを入れる



sh /home/fss3/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/zellij.sh
# z
sh /home/fss3/usuyuki/.dotfiles/components/linux/debian/getApplication/packages/z.sh

# brew系統
brew install gtop
brew install asdf
# linuxではcaskでGUIソフトウェア入れられない(mac専用)
# brew install cask
# brew install --cask alacritty
brew install ranger
brew install tig
brew install git-delta
brew install starship
# starshipのパスの追加
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# linuxでもbrewでfontを入れたい
brew tap homebrew/linux-fonts
brew install font-hack-nerd-font

brew install neovim
# astroNvim依存
brew install ripgrep
brew install jesseduffield/lazygit/lazygit
brew install bottom
brew install -f gdu

# nodeを入れる
