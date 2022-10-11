#!/bin/sh

echo "Backing up settings and extensions..."

# Clear `./User`
rm -rf ./User/

# Backup the VSCode settings
cp -r ~/.config/Code/User/ ./

# Backup the VSCode extensions
code --list-extensions > ./extensions.txt

echo -e "\e[32m[== Backup complete ==]\e[0m"
