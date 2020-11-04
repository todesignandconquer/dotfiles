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
source $HOME/.tmuxinator.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

if [ -x "$(command -v rbenv)" ] ; then
  eval "$(rbenv init -)"
fi

if [ -x "$(command -v pyenv)" ] ; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [ -x "$(command -v direnv)" ] ; then
  eval "$(direnv hook zsh)"
fi

bindkey '[C' forward-word
bindkey '[D' backward-word
#
# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
