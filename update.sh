#!/bin/bash
if brew --version ; then
    echo "Brew is Installed"
else
    echo "Installing Brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Installing Updating Brew Packages
echo "Executing Brew Bundle"
cd brew/ || exit
brew bundle
cd ..

# Copy zsh conf

cp zsh/.zshrc $HOME/.zshrc
echo "zshrc is copyed to home dir"


# Copy tmux conf

mkdir -p $HOME/.tmux
cp tmux/.tmux.conf $HOME/.tmux/.tmux.conf
