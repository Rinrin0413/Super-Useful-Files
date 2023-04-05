#!/bin/sh

echo "Importing settings and extensions for Visual Studio Code Insiders..."

# Clear `~/.config/Code - Insiders/User/`
rm -rf ~/.config/Code\ -\ Insiders/User/

# Import the VSCode settings
cp -r ./User/ ~/.config/Code\ -\ Insiders/User/

# Import the VSCode extensions
while read -r line; do
    code-insiders --install-extension "$line"
done < ./extensions.txt

echo -e "\e[32m[== Import complete ==]\e[0m"
