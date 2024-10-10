#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Run on MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Add Homebrew to path
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # Add OpenJDK to first in path
  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
  # For compilers to find OpenJDK
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
fi

# Run on Linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Start X on Linux
  if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    startx
  fi
fi

# Environment Variables
export XDG_CONFIG_HOME="$HOME"/.config
