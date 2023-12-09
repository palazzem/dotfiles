# Configure Homebrew (OSX only)
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

# Determine the Google Cloud SDK directory
if [[ -d "$HOME/bin/google-cloud-sdk" ]]; then
    GCLOUD_SDK_DIR="$HOME/bin/google-cloud-sdk"
elif [[ -d "/opt/gcloud/google-cloud-sdk" ]]; then
    GCLOUD_SDK_DIR="/opt/gcloud/google-cloud-sdk"
else
    echo "Google Cloud SDK directory not found."
    GCLOUD_SDK_DIR=""
fi

# Source the files if the directory is set
if [[ -n $GCLOUD_SDK_DIR ]]; then
    source "$GCLOUD_SDK_DIR/path.zsh.inc"
    source "$GCLOUD_SDK_DIR/completion.zsh.inc"
fi
