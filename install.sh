#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install homebrew packages
brew install zsh
brew install neovim
brew install ripgrep

# Install o_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set up sym links so our .dotfiles can be in this repo but accessed by the system as needed
# Run this from the directory of the git repo
ln -s ./.dotfiles/.zshrc ~/.zshrc
ln -s ./.dotfiles/nvim ~/.config/nvim
