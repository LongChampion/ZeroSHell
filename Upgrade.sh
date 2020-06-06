#!/usr/bin/bash

if [[ ! -f $(which yay) ]]; then
    echo "Please install yay before runing this script!"
    exit
fi

for i in $(cat Dependency.txt); do
    yay -S --noconfirm --needed $i
done

git submodule update --remote --recursive --init --depth 1

./Restore.zsh
