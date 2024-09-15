#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
export VISUAL=nvim
export EDITOR=nvim
export SUDO_EDITOR=nvim

# Aliases
alias v=nvim
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
PS1='[\u@\h \W]\$ '
