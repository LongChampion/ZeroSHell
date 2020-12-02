[[ -f $HOME/.zshrc ]] && . $HOME/.zshrc

if [[ ! -d $HOME/.xorg ]]; then
  mkdir $HOME/.xorg
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx &>| $HOME/.xorg/$(date +%Y-%m-%d_%H:%M:%S).xorg.log
fi
