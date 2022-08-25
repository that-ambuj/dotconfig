export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

set -o vi

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

fpath=($fpath "/var/home/ambujsingh/.zfunctions")

# Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
#prompt spaceship

export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

fpath=($fpath "/home/ambuj/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

alias install="sudo dnf install"
alias upgrade="sudo dnf upgrade"
alias uninstall="sudo dnf remove"
alias search="dnf search"


# bun completions
[ -s "/home/ambuj/.bun/_bun" ] && source "/home/ambuj/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#deno
export DENO_INSTALL="/home/ambuj/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#flutter path
export PATH="$HOME/flutter/bin:$PATH"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
