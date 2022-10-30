# Variables
export EDITOR="nvim"
export GOPATH="$HOME/programs/go"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"

# Paths
ANDROID_HOME="$HOME/programs/android"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/programs/android-studio/bin"
PATH="$PATH:$HOME/programs/flutter/bin"
PATH="$PATH:$HOME/programs/flutter/.pub-cache/bin"
PATH="$PATH:$ANDROID_HOME/tools/bin"
PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH
export ANDROID_HOME

# Initializing *env
eval "$(pyenv init -)"
eval "$(ssh-agent)" > /dev/null

# Python Virtualenv
source $(which virtualenvwrapper.sh)

# Google Cloud SDK
source "/opt/gcloud/google-cloud-sdk/path.zsh.inc"
source "/opt/gcloud/google-cloud-sdk/completion.zsh.inc"
