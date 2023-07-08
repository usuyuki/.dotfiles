cd ~/.ssh
ssh-keygen -t ed25519
echo << EOF
Host github.com
    IdentityFile ~/.ssh/connect_github
    User git
EOF >> ~/.ssh/config
echo "open https://github.com/settings/keys"
