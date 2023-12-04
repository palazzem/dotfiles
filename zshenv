# Configure Brew (if OSX)
[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="nvim"
export GOPATH="$HOME/programs/go"
export GPG_TTY=$(tty)

# Paths
ANDROID_HOME="$HOME/programs/android"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$GOPATH/bin"
export PATH

# Initializing *env
command -v pyenv >/dev/null && eval "$(pyenv init -)"
eval "$(ssh-agent)" > /dev/null

# Google Cloud SDK
source "/opt/gcloud/google-cloud-sdk/path.zsh.inc"
source "/opt/gcloud/google-cloud-sdk/completion.zsh.inc"
