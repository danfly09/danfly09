#! /bin/bash

# Install starship shell theme
curl -sS https://starship.rs/install.sh | sh

# Simlinks wouldn't work unless this script is executed from its own location
if ! ls "$PWD/$(basename $0)" >/dev/null 2>&1; then
    echo 'execute this script from its location'
    exit 1
fi

# Create your local share folder if it doesn't exist
if ! ls "$HOME/.local/share" >/dev/null 2>&1; then
    mkdir -p $HOME/.local/share
fi

# Link files to your home directory
ln -sf $PWD/zsh $HOME/.local/share/
ln -sf $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/vimrc $HOME/.vimrc

