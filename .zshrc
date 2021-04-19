[[ $- != *i* ]] && return

# Fix wired bug when press Delete
bindkey "^[[3~" delete-char

# Modify "newline" character
export PROMPT_EOL_MARK=''

# Update $PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.gem/ruby/3.0.0/bin

# Colorize some commands
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias ll='lsd -l'
alias la='lsd -A'
alias lt='lsd --tree'

# Color manpage
man() {
    LESS=-R \
    LESS_TERMCAP_mb=$'\e[1;31m' \
    LESS_TERMCAP_md=$'\e[01;36m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    command man "$@"
}

# Set input method for application
export TERM=xterm-256color
export COLORTERM=truecolor
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Disable bash history
unset HISTFILE

# Disable overwritten by redirection
set -o noclobber

# Color files by types
set colored-stats On

# Append char to indicate type
set visible-stats On

# Mark symlinked directories
set mark-symlinked-directories On

# Color the common prefix
set colored-completion-prefix On

# Color the common prefix in menu-complete
set menu-complete-display-prefix On

# Load theme: PowerLevel10k
source $HOME/.zsh/powerlevel10k/powerlevel10k.zsh-theme
if [[ -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh
fi

# Turn on autocompletion
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin
zstyle ':completion:*' menu select

# fast-syntax-highlighting plugin
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# ssh plugin (auto completion)
source $HOME/.zsh/ssh/ssh.plugin.zsh

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

