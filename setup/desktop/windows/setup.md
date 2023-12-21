## wsl
```
wsl --install
```

## winget
- 初期インストールバージョンは壊れているので、[Microsoft Storeで最新に更新](https://apps.microsoft.com/detail/9NBLGGH4NNS1?rtc=1&hl=ja-jp&gl=JP#activetab=pivot:overviewtab)(名前は違うがこいつがwinget)

- https://github.com/usuyuki/.dotfiles/blob/main/setup/desktop/windows/winget.json をダウンロード

```sh
winget import -i winget.json
```

## 日本語入力
https://github.com/usuyuki/.dotfiles-secret/tree/main/system-config/ime  
から定義を持ってくる


## fonts
https://github.com/usuyuki/.dotfiles-secret/tree/main/fonts

## alacritty
https://github.com/usuyuki/.dotfiles/blob/main/config/alacritty/win/alacritty.yml  
を
```
%APPDATA%\alacritty\alacritty.toml
```
に配置
## wsl arch
