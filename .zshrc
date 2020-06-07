[[ $- != *i* ]] && return

# Update $PATH
export PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin

# Colorize some commands
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='colorls -l'
alias la='colorls -A'
alias lg='colorls --gs'
alias lt='colorls --tree'
alias lr='colorls --report'

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
zstyle ':completion:*' menu select

# zsh-syntex-highlighting plugin
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ssh plugin (auto completion)
source $HOME/.zsh/ssh/ssh.plugin.zsh

