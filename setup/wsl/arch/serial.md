# Windowsで繋いだUSBをWSLにわたす

https://learn.microsoft.com/ja-jp/windows/wsl/connect-usb#attach-a-usb-device

arch linux wsl

```
sudo pacman -S usbip hwdata
```

power shell

```
winget install usbipd
usbip list
usbipd bind -b <busid>
usbipd attach -w Arch -b <busid>
```

これで/dev/ttyUSBとかに出てくるようになる。
