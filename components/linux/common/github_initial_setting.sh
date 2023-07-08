ssh-keygen -t ed25519 -f ~/.ssh/github_connect_key -N ""
entry="
Host github.com
    IdentityFile ~/.ssh/connect_github
    User git
"

if [ ! -f ~/.ssh/config ]; then
	# ファイルが存在しない場合
	echo "$entry" >~/.ssh/config
else
	# ファイルがすでにある場合
	if ! grep -Fxq "$entry" ~/.ssh/config; then
		echo "$entry" >>~/.ssh/config
	fi
fi

echo "open https://github.com/settings/keys and add ~/.ssh/github_connect_key.pub"
cat ~/.ssh/github_connect_key.pub
rm -rf ~/.ssh/github_connect_key.pub
