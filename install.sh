#!/usr/bin/env bash
set -e

# Install stow if not present
if ! command -v stow &> /dev/null; then
    echo "Stow is not installed. Installing..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get install -y stow
    elif command -v brew &> /dev/null; then
        brew install stow
    else
        echo "Error: Cannot find apt-get or brew to install stow."
        exit 1
    fi
fi

# Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is not installed. Installing..."
    KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Stow dotfiles
echo "Stowing dotfiles..."
rm -f "$HOME/.zshrc"

# Move existing conflicting files to a backup
if [ -f "$HOME/.gitconfig" ] && [ ! -L "$HOME/.gitconfig" ]; then
    echo "Backing up existing ~/.gitconfig to ~/.gitconfig.bak"
    mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
fi

stow -v -t "$HOME" git tmux zsh

echo "Dotfiles setup complete!"
