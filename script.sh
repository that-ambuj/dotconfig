#!/bin/bash

# Install Rust Toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# Install starship prompt and setup bashrc and zshrc
curl -sS https://starship.rs/install.sh | sh
if ($SHELL == "/bin/bash"); then
	echo 'eval "$(starship init bash)"' > $HOME/.bashrc
elif ($SHELL == "/bin/bash"); then
	echo 'eval "$(starship init bash)"' > $HOME/.zshrc
fi

# Install NVM(Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo 'export nvm_dir="$home/.nvm"
[ -s "$nvm_dir/nvm.sh" ] && \. "$nvm_dir/nvm.sh"
[ -s "$nvm_dir/bash_completion" ] && \. "$nvm_dir/bash_completion"' > $HOME/.bashrc

source $HOME/.bashrc

echo '##########
Restart the terminal and run:

nvm install --lts
nvm use --lts
corepack enable
##########'

# Install COC-NVIM 
# curl -sL install-node.vercel.app/lts | bash

# Install HomeBrew 
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'source "$HOME/.cargo/env"' > $HOME/.bashrc
# echo 'source "$HOME/.cargo/env"' > $HOME/.zshrc
# brew install neovim

# configure git
git config --global user.name that-ambuj
git config --global user.email ambujs89+git@gmail.com

# Configure dotconfig
mkdir -p $HOME/.config
ln -s ./nvim $HOME/.config/
ln -s ./.zshrc $HOME/.zshrc
ln -s ./.vimrc $HOME/.vimrc
ln -s ./starship.toml $HOME/.config/starship.toml
