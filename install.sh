#!/bin/bash

# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install zsh
brew install neovim
brew install ripgrep

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
