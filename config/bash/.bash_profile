#!/bin/bash -l
# ログイン時のみ実行
source ~/.bashrc

export LANG=ja_JP.UTF-8

# 色つける
BEGIN="\[\e[1;37;42m\]"
BEGIN_TRIANGLE="\[\e[0;32;47m\]"
MIDDLE="\[\e[0;30;47m\]"
MIDDLE_TRIANGLE="\[\e[0;37m\]"
END="\[\e[m\]"
HOST_NAME=""
export PS1="${BEGIN} \u🌂\h⏰\t⌛\# ${BEGIN_TRIANGLE}${MIDDLE} \W ${MIDDLE_TRIANGLE}${END} "
