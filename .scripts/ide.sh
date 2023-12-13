#!/bin/zsh

case $1 in
  1)
    tmux split-window -v
    tmux resize-pane -D 15
    clear
    tmux split-window -h
    tmux selectp -U
    nvim
    ;;
  2)
    tmux split-window -h
    tmux split-window -v
    tmux selectp -L
    tmux split-window -v
    tmux selectp -U
    clear
    ;;
  *)
    echo [ERROR] "$1" は設定されていない引数です。
    ;;
esac
