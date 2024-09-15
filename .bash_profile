#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Run on MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Add Homebrew to path
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Run on Linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Start X on Linux
  if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    startx
  fi
fi

export XDG_CONFIG_HOME="$HOME"/.config
