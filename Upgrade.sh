#!/usr/bin/bash

# Check if yay is available
if [[ ! -f $(which yay) ]]; then
    echo "Please install yay before runing this script!"
    exit
fi

# Install dependency
if [[ $1 == "install" ]]; then
    for i in $(cat Dependency.txt); do
        yay -S --noconfirm --needed $i
    done
fi

# Install colorls (ruby - gem)
if [[ ! -f $(which colorls) ]]; then
    gem install colorls
else
    gem update colorls
fi

# Update all sub-repository
git submodule update --remote --recursive --init --depth 1

# Restore all settings
./Restore.zsh

