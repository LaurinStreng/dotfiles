#!/bin/bash

# Copy zsh conf

cp zsh/.zshrc $HOME/.zshrc
echo "zshrc is copyed to home dir"

# Installing Updating Brew Packages
echo "Executing Brew Bundle"
cd brew/ || exit
brew bundle
