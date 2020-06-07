#!/usr/bin/zsh

ZSH_HOME=$HOME/.zsh

if [[ -f $ZSH_HOME/.zprofile ]]; then
    cp -v $ZSH_HOME/.zprofile $HOME
fi

if [[ -f $ZSH_HOME/.zshrc ]]; then
    cp -v $ZSH_HOME/.zshrc $HOME
fi

if [[ -f $ZSH_HOME/.p10k.zsh ]]; then
    cp -v $ZSH_HOME/.p10k.zsh $HOME
fi

if [[ -f $ZSH_HOME/.xinitrc ]]; then
    cp -v $ZSH_HOME/.xinitrc $HOME
fi
