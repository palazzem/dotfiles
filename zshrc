# System information when opening a new shell or
# after clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi
if type archey > /dev/null; then
    alias clear='clear; archey -o'
    archey -o
fi

# Paths
export GOPATH="$HOME/programs/go"

PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$GOPATH/bin"

# Variables
export CASE_SENSITIVE="true"
export DISABLE_AUTO_UPDATE="true"
export EDITOR="nvim"
export GPG_TTY=$(tty)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="norm"

# Shell
plugins=(git)
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initializing *env
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# Google Cloud SDK
source '/opt/gcloud/google-cloud-sdk/path.zsh.inc'
source '/opt/gcloud/google-cloud-sdk/completion.zsh.inc'

# Exporting $PATH
export PATH
