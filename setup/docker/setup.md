# VSCode の dev container で使う用の dotfiles セットアップ用

settings.json に書かれた下記の設定により、DevContainer 起動時に自動でセットされる

```
  "dotfiles.repository": "https://github.com/usuyuki/.dotfiles",
  "dotfiles.targetPath": "~/.dotfiles",
  "dotfiles.installCommand": "~/.dotfiles/setup/docker/setup.sh",
```

dc up -d のときには生成されず、VSCode で DevContainer に入って初めて生成される
