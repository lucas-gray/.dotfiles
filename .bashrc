#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias lswg='ls /opt/homebrew/etc/wireguard/'

# Prompt
PS1='[\u@\h \W]\$ '
