#!/bin/bash

export HISTFILE=/tmp/.bash_history
export HISTCONTROL="erasedups:ignoreboth"
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"
export HISTFILESIZE=100
export HISTSIZE=100
export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR

[[ -f ~/.bashrc ]] && . $HOME/.bashrc
[[ -f ~/.config/lf/lf_icons.sh ]] && . $HOME/.config/lf/lf_icons.sh
[[ -f ~/.dotfiles/scripts/browser-sync.sh ]] && ~/.dotfiles/scripts/browser-sync.sh dhdd12om.winston-wednesday
