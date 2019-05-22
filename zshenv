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