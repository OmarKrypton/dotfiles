#!/bin/bash

printf "\n%.0s" {1..2}
echo ' ____  __.                      __                  '
echo '|    |/ _|______ ___.__._______/  |_  ____   ____   '
echo '|      < \_  __ <   |  |\____ \   __\/  _ \ /    \  '
echo '|    |  \ |  | \/\___  ||  |_> >  | (  <_> )   |  \ '
echo '|____|__ \|__|   / ____||   __/|__|  \____/|___|  / '
echo '        \/       \/     |__|                    \/  '
echo '________          __    _____.__.__                 '
echo '\______ \   _____/  |__/ ____\__|  |   ____   ______'
echo ' |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/'
echo ' |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \ '
echo '/_______  /\____/|__|  |__|  |__|____/\___  >____  >'
echo '        \/                                \/     \/  '
printf "\n%.0s" {1..2}

# Set the source directory for your dotfiles
DOTFILES_DIR="$HOME/Downloads/dotfiles"

# Copy .icons and .themes content
echo "Copying icons and themes..."
mkdir -p ~/.icons ~/.themes
cp -r "$DOTFILES_DIR/.icons/." ~/.icons/ > /dev/null 2>&1
cp -r "$DOTFILES_DIR/.themes/." ~/.themes/ > /dev/null 2>&1
echo "Successfully copied icons and themes!"
# Copy config content
echo "Copying configuration files..."
mkdir -p ~/.config
cp -r "$DOTFILES_DIR/config/." ~/.config/ > /dev/null 2>&1
echo "Successfully copied config files!"
# Copy wallpapers
echo "Copying wallpapers..."
mkdir -p ~/Pictures/wallpapers
cp -r "$DOTFILES_DIR/wallpapers/." ~/Pictures/wallpapers/ > /dev/null 2>&1
echo "Successfully copied wallpapers!"

echo "Dotfiles setup completed!"

