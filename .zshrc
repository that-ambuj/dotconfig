export nvm_dir="$home/.nvm"
[ -s "$nvm_dir/nvm.sh" ] && \. "$nvm_dir/nvm.sh"  # this loads nvm
[ -s "$nvm_dir/bash_completion" ] && \. "$nvm_dir/bash_completion"  # this loads nvm bash_completion

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

fpath=($fpath "/var/home/ambujsingh/.zfunctions")

export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

fpath=($fpath "/home/ambuj/.zfunctions")

# bun completions
[ -s "/home/ambuj/.bun/_bun" ] && source "/home/ambuj/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#deno
export DENO_INSTALL="/home/ambuj/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#flutter path
export PATH="$HOME/flutter/bin:$PATH"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
