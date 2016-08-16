# language
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="norm"

# shell
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

# NeoVim as default editor
export EDITOR="nvim"
alias vim=nvim

# plugins
plugins=(git)

# using oh-my-zsh
source $ZSH/oh-my-zsh.sh

# adding global local/bin folder
PATH=/usr/local/bin:$PATH

# adding local/bin folder
PATH=$PATH:$HOME/.local/bin

# Go
export GOPATH="$HOME/programs/go"
PATH="$PATH:$GOPATH/bin"

# Python virtualenvwrapper
source virtualenvwrapper_lazy.sh

# Enabling pyenv
eval "$(pyenv init -)"

# Heroku binary
PATH="/usr/local/heroku/bin:$PATH"

# Hashicorp tools
PATH="$HOME/programs/packer/bin:$PATH"
PATH="$HOME/programs/terraform/bin:$PATH"

# Node Version Manager
if [ -f "$HOME/.nvm/nvm.sh" ]; then
    source "$HOME/.nvm/nvm.sh"
else
    export NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
fi

# system information when opening a new shell
# or after clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi
if type archey > /dev/null; then
    alias clear='clear; archey'
    archey
fi

export PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/palazzem/programs/google-cloud-sdk/path.zsh.inc' ]; then
    source '/home/palazzem/programs/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/palazzem/programs/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/home/palazzem/programs/google-cloud-sdk/completion.zsh.inc'
fi
