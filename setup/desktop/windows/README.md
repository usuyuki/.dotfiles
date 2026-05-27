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
%APPDATA%\alacritty\alacritty.yml
```
に配置
## wsl arch
https://zenn.dev/rayfiyo/articles/20231009-arch_linux_on_wsl2

中の設定はトップのREADMEにあり


# WindowsでMacライクなキーバインドを設定する手順


## keymap調整
- SharpKeysでCapsLockをF13にレジストリレベルで変換
- AutoHotkeyでF13+各キーをMacライクな操作にマップ

する。AutoHotkeyやPowerToys、logi optionsではどうやってもうまく行かないのでレジストリ書き換えるしかない

## 概要

CapsLockキーを修飾キーとして使い、Mac風のカーソル移動ショートカットをWindowsで実現する。

| ショートカット | 動作 |
|---|---|
| CapsLock + E | 行末へ移動 |
| CapsLock + A | 行頭へ移動 |
| CapsLock + F | 1文字右へ移動 |
| CapsLock + B | 1文字左へ移動 |
| CapsLock + P | 上の行へ移動 |
| CapsLock + N | 下の行へ移動 |
| CapsLock + D | 1文字削除（Delete） |

---

## Step 1: AutoHotkeyのインストール

```powershell
winget install AutoHotkey.AutoHotkey
```

---

## Step 2: SharpKeysのインストール

```powershell
winget install randyrants.sharpkeys
```

CapsLockはWindowsや日本語IMEに横取りされてAutoHotkeyで直接扱えないため、
SharpKeysでレジストリレベルでF13キーに変換する。

1. SharpKeysを起動
2. **Add** をクリック
3. 左側（From）で `Special: Caps Lock` を選択
4. 右側（To）で `Special: F13` を選択
5. **Write to Registry** をクリック
6. PCを**再起動**

---

## Step 3: Google日本語入力の設定（使用している場合）

CapsLock（英数キー）がIMEに横取りされないよう設定する。

1. タスクトレイのGoogle日本語入力アイコンを右クリック
2. **プロパティ** → **一般** → **キー設定** → **編集**
3. 左下の**インポート**から以下のファイルを読み込む
4. OKで保存

`Eisu`（英数キー）の行を削除したkeymapファイルを使用すること。

---

## Step 4: AutoHotkeyスクリプトの作成

以下の内容で `mac-key.ahk` を作成する。

```ahk
#Requires AutoHotkey v2.0
#SingleInstance Force

F13 & e::Send "{End}"
F13 & a::Send "{Home}"
F13 & f::Send "{Right}"
F13 & b::Send "{Left}"
F13 & p::Send "{Up}"
F13 & n::Send "{Down}"
F13 & d::Send "{Delete}"
```

---

## Step 5: スタートアップへの登録

PCを起動したときに自動でスクリプトが有効になるよう設定する。

1. `Win + R` を押して `shell:startup` と入力しEnter
2. 開いたフォルダに `mac-key.ahk` のショートカットを置く

ショートカットの作り方：`mac-key.ahk` を右クリック → **ショートカットの作成** → 作成されたショートカットをstartupフォルダに移動

---

## トラブルシューティング

### AHKが二重起動してダイアログが出る
スクリプト先頭に `#SingleInstance Force` が記載されていることを確認する。

### CapsLockを押すと半角英数になる
Google日本語入力のキーマップからEisuの行を削除する（Step 3参照）。

### スクリプトを編集したい
`mac-key.ahk` を右クリック → **プログラムから開く** → **メモ帳**
