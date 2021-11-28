#!/usr/bin/zsh

ZSH_HOME=$HOME/.zsh/

if [[ -f $HOME/.zprofile ]]; then
    cp -v $HOME/.zprofile $ZSH_HOME
fi

if [[ -f $HOME/.zshrc ]]; then
    cp -v $HOME/.zshrc $ZSH_HOME
fi

if [[ -f $HOME/.p10k.zsh ]]; then
    cp -v $HOME/.p10k.zsh $ZSH_HOME
fi

