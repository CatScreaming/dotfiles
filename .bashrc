#!/bin/bash
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set custom prompt
PS1="\[$(printf '\e[0;35m')\][\@] \[$(printf '\e[0;35m')\]\u †\[$(printf '\e[0m')\] \[$(printf '\e[0;33m')\]\w \[$(printf '\e[0;36m')\]\$ \[$(printf '\e[0m')\]"

# Better bash 
bind 'set bell-style none'
bind 'set show-all-if-ambiguous on'
bind 'set colored-completion-prefix on'
bind 'set completion-ignore-case on'
bind 'set mark-symlinked-directories on'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'
bind '"\t": menu-complete'
bind '"\e[Z": menu-complete-backward'
shopt -s autocd
shopt -s dirspell direxpand
shopt -s cdspell

# Alias setup
alias got='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls -a --color=auto'

# Git shell setup
source /usr/share/git/completion/git-completion.bash 2> /dev/null
if [ -f "$HOME/.dotfiles/.bash-git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
	GIT_PROMPT_FETCH_REMOTE_STATUS=0
	source "$HOME/.dotfiles/.bash-git-prompt/gitprompt.sh"
fi

# SSH setup
# Start agent if not started yet
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
	chmod 600 "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
# Source auth_socket if not sourced yet
if [[ -z $SSH_AUTH_SOCK ]]; then
    . "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
