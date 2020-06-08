#!/usr/bin/bash

echo -e "\e[1;33m[*] \e[0;32mChecking yay installation ...\e[0m"
if [[ ! -f $(which yay) ]]; then
    echo "Please install yay before runing this script!"
    exit
fi
echo

echo -e "\e[1;33m[*] \e[0;32mInstalling dependency\e[0m"
if [[ $1 == "install" ]]; then
    for i in $(cat Dependency.txt); do
        yay -S --noconfirm --needed $i
    done
fi
echo

echo -e "\e[1;33m[*] \e[0;32mUpdating colorls ...\e[0m"
if [[ ! -f $(which colorls) ]]; then
    gem install colorls
else
    gem update colorls
fi
echo

echo -e "\e[1;33m[*] \e[0;32mInstalling Meslo-Nerd-Font-Complete font\e[0m"
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Meslo/L-DZ/Regular/complete/Meslo%20LG%20L%20DZ%20Regular%20Nerd%20Font%20Complete.ttf
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Meslo/L-DZ/Bold/complete/Meslo%20LG%20L%20DZ%20Bold%20Nerd%20Font%20Complete.ttf
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Meslo/L-DZ/Italic/complete/Meslo%20LG%20L%20DZ%20Italic%20Nerd%20Font%20Complete.ttf
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Meslo/L-DZ/Bold-Italic/complete/Meslo%20LG%20L%20DZ%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
sudo mv ./*.ttf /usr/share/fonts/TTF/
echo

echo -e "\e[1;33m[*] \e[0;32mUpdating all sub-repository ...\e[0m"
git submodule update --remote --recursive --init --depth 1
echo

echo -e "\e[1;33m[*] \e[0;32mRestore all settings\e[0m"
./Restore.zsh

