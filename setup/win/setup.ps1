# 未完成


# WSL設定
wsl --install

# chocoインストール
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# いつも使うソフトウェアインストール(choco intall =cinst)
cinst noevim googlechrome brave git github-desktop 7zip visualstudiocode slack discord docker-desktop powertoys warp googledrive gimp php microsoft-windows-terminal wsl-ubuntu-2204 peco -y

# 更新
choco upgrade all -y

# install paulirish/git-open
function git-open { cmd /c "C:\Program Files\Git\usr\bin\bash.exe" "~/Documents/Scripts/git-open.sh" }
Set-Alias -Name gop -Value git-open