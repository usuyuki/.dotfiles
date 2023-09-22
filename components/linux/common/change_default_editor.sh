#!/bin/bash

PROFILE_FILE="$HOME/.profile"

if [ ! -f "$PROFILE_FILE" ]; then
    touch "$PROFILE_FILE"
fi

# ~/.profileに 'export EDITOR=vim' が存在するか確認
if grep -q '^export EDITOR=vim' "$PROFILE_FILE"; then
    # 'export EDITOR=vim' が存在する場合、何もしない
    echo "'export EDITOR=vim' is already set."
elif grep -q '^export EDITOR=nano' "$PROFILE_FILE"; then
    # 'export EDITOR=nano' が存在する場合、'export EDITOR=vim' に置換
    sed -i'' -e 's/^export EDITOR=nano/export EDITOR=vim/' "$PROFILE_FILE"
    echo "Replaced 'export EDITOR=nano' with 'export EDITOR=vim'."
else
    # 'export EDITOR=' が存在しない、または、値が 'nano' でも 'vim' でもない場合、'export EDITOR=vim' を追加
    echo 'export EDITOR=vim' >> "$PROFILE_FILE"
    echo "Added 'export EDITOR=vim' to $PROFILE_FILE."
fi
