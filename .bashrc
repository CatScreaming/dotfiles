#!/bin/bash
# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[$(printf '\e[0;35m')\][\@] \[$(printf '\e[0;35m')\]\u\[$(printf '\e[0m')\] \[$(printf '\e[0;33m')\]\w \[$(printf '\e[0;36m')\]\$ \[$(printf '\e[0m')\]"

alias got='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto'

bind 'set bell-style none'
bind 'set show-all-if-ambiguous on'
bind 'set colored-completion-prefix on'
bind 'set completion-ignore-case on'
bind 'set mark-symlinked-directories on'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

shopt -s autocd
shopt -s dirspell direxpand
shopt -s cdspell

source /usr/share/git/completion/git-completion.bash

if [ -f "$HOME/.dotfiles/.bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
	GIT_PROMPT_FETCH_REMOTE_STATUS=0
	source $HOME/.dotfiles/.bash-git-prompt/gitprompt.sh
fi

