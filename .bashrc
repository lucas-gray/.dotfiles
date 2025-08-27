#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
export VISUAL=nvim
export EDITOR=nvim
export SUDO_EDITOR=nvim
export SECOND_BRAIN="$HOME"/second-brain/

# Aliases
alias v='nvim'
alias vimdiff='nvim -d'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sb='clear && cd "$SECOND_BRAIN" && tree -d'

# Prompt
PS1='\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]\n(\[\033[36m\]\W\[\033[00m\]) \[\033[1;49m\]\$\[\033[00m\] '
