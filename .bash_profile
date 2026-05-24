#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment Variables
export XDG_CONFIG_HOME="$HOME"/.config

# Run on MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then

  # Add Homebrew to path
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # Bash completions
  if type brew &>/dev/null
  then
    HOMEBREW_PREFIX="$(brew --prefix)"
    if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
    then
      source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
    else
      for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
      do
        [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
      done
    fi
  fi

  # Add OpenJDK to first in path
  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
  # For compilers to find OpenJDK
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

fi
