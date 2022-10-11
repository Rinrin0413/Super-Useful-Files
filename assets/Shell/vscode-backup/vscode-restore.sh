#!/bin/sh

echo "Importing settings and extensions..."

# Clear `~/.config/Code/User/`
rm -rf ~/.config/Code/User/

# Import the VSCode settings
cp -r ./User/ ~/.config/Code/User/

# Import the VSCode extensions
while read -r line; do
    code --install-extension "$line"
done < ./extensions.txt

echo -e "\e[32m[== Import complete ==]\e[0m"
