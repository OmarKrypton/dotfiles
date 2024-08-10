#!/bin/bash

# Set the source directory for your dotfiles
DOTFILES_DIR="$HOME/Downloads/dotfiles"

# Copy .icons and .themes content
echo "Copying icons and themes..."
mkdir -p ~/.icons ~/.themes
cp -r "$DOTFILES_DIR/.icons/." ~/.icons/
cp -r "$DOTFILES_DIR/.themes/." ~/.themes/

# Copy config content
echo "Copying configuration files..."
mkdir -p ~/.config
cp -r "$DOTFILES_DIR/config/." ~/.config/

# Copy wallpapers
echo "Copying wallpapers..."
mkdir -p ~/Pictures/wallpapers
cp -r "$DOTFILES_DIR/wallpapers/." ~/Pictures/wallpapers/

echo "Dotfiles setup completed!"

