# Configure Homebrew (OSX only)
[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR="nvim"
export GOPATH="$HOME/programs/go"
export GPG_TTY=`tty`

# Paths
ANDROID_HOME="$HOME/programs/android"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$GOPATH/bin"
export PATH

# Load Google Cloud SDK directory
source "$HOME/.local/share/google-cloud-sdk/path.zsh.inc"
source "$HOME/.local/share/google-cloud-sdk/completion.zsh.inc"
