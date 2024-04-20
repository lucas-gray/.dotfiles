#
# ~/.bash_profile
#

# Run on MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start X on Linux
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  startx
fi
