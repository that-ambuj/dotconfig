#! /bin/bash
# fedora setup script
# TODO implement change in package manager based on distro

sudo dnf upgrade

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
sudo dnf install code

# Install zsh
sudo dnf install zsh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.bashrc
exec bash

source ~/.zshrc
exec zsh

nvm install --lts
nvm use --lts

exec zsh
npm install -g spaceship-prompt

exec zsh

sudo dnf install vim

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Gnome Dock and it's dependencies
sudo dnf install sassc

git clone https://github.com/micheleg/dash-to-dock.git -b ubuntu-dock
make -C dash-to-dock install
