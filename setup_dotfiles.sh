#!/bin/bash

printf "\n\n"
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
printf "\n\n"

# Set the source directory for your dotfiles
DOTFILES_DIR="$HOME/Downloads/dotfiles"

# Check if the DOTFILES_DIR exists
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Error: Directory $DOTFILES_DIR does not exist."
    exit 1
fi

# Copy .icons and .themes content
echo "Copying icons and themes..."
mkdir -p ~/.icons ~/.themes
cp -vr "$DOTFILES_DIR/.icons/." ~/.icons/
cp -vr "$DOTFILES_DIR/.themes/." ~/.themes/
echo "Successfully copied icons and themes!"

# Copy config content
echo "Copying configuration files..."
mkdir -p ~/.config
cp -vr "$DOTFILES_DIR/config/." ~/.config/
echo "Successfully copied config files!"

# Copy wallpapers
echo "Copying wallpapers..."
mkdir -p ~/Pictures/wallpapers
cp -vr "$DOTFILES_DIR/wallpapers/." ~/Pictures/wallpapers/
echo "Successfully copied wallpapers!"

echo "Dotfiles setup completed!"
