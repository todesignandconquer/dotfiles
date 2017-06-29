if [ -f "$HOME/env/.lxprofile" ] ; then
  source "$HOME/env/.lxprofile"
fi

if [ -f "$HOME/.env" ] ; then
  source "$HOME/.env"
fi

export EDITOR='vim'

#ALIASES
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# List only directories
alias lsd='ls -l | grep "^d"'

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Shortcuts
alias g="git"
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
alias gps='git ps'
alias ga.='git add -A'
alias vim='/usr/local/bin/vim'
alias v="/usr/local/bin/vim"
alias ls="ls -G"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# File size
alias fs="stat -f \"%z bytes\""

export ZSH=$HOME/.oh-my-zsh

# List all files colorized in long format, including dot files
alias ll="ls -Gla"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh

bindkey '[C' forward-word
bindkey '[D' backward-word

source ~/env/.lxprofile
