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
    echo -e "\e[31mError: Directory $DOTFILES_DIR does not exist.\e[0m"
    exit 1
fi

# Function to display a loading message and copy files
copy_files() {
    src="$1"
    dest="$2"
    description="$3"
    echo -ne "Copying $description..."
    mkdir -p "$dest"
    cp -r "$src" "$dest" > /dev/null 2>&1
    echo -e "\e[32mDone\e[0m"
}

# Copy .icons and .themes content
copy_files "$DOTFILES_DIR/.icons/." ~/.icons/ "icons"
copy_files "$DOTFILES_DIR/.themes/." ~/.themes/ "themes"

# Copy config content
copy_files "$DOTFILES_DIR/config/." ~/.config/ "configuration files"

# Copy wallpapers
copy_files "$DOTFILES_DIR/wallpapers/." ~/Pictures/wallpapers/ "wallpapers"

echo -e "\e[34mDotfiles setup completed!\e[0m"
