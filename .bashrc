#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export VISUAL=nvim
export EDITOR=nvim
export SUDO_EDITOR=nvim
export SECOND_BRAIN="$HOME"/second-brain/

# Aliases
alias v='nvim'
alias vimdiff='nvim -d'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sb='clear && cd "$SECOND_BRAIN" && tree -d -I 04_archive'

# Configure git-prompt options
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
# export GIT_PS1_SHOWSTASHSTATE=1
# export GIT_PS1_SHOWUPSTREAM="auto"

# MacOS prompt
if [[ "$OSTYPE" == "darwin"* ]]; then
  source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
  PS1='\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]$(__git_ps1 " (%s) ")\n(\[\033[36m\]\W\[\033[00m\]) \[\033[1;49m\]\$\[\033[00m\] '
fi

# Linux prompt
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  PS1='\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]\n(\[\033[36m\]\W\[\033[00m\]) \[\033[1;49m\]\$\[\033[00m\] '
fi
