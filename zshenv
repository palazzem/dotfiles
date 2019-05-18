# Variables
export EDITOR="nvim"
export GOPATH="$HOME/programs/go"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"

# Paths
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$GOPATH/bin"
export PATH

# Initializing *env
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(ssh-agent)" > /dev/null

# Python Virtualenv
source $(which virtualenvwrapper.sh)

# Google Cloud SDK
source "/opt/gcloud/google-cloud-sdk/path.zsh.inc"
source "/opt/gcloud/google-cloud-sdk/completion.zsh.inc"

# System information when opening a new shell or clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi
if type archey > /dev/null; then
    alias clear='clear; archey -o'
    archey -o
fi