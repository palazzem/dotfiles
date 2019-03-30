# system information when opening a new shell
# or after clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi
if type archey > /dev/null; then
    alias clear='clear; archey -o'
    archey -o
fi

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
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"

# adding local/bin folder
PATH=$PATH:$HOME/.local/bin

# Go
export GOPATH="$HOME/programs/go"
PATH="$PATH:$GOPATH/bin"

# Python virtualenvwrapper
source virtualenvwrapper_lazy.sh

# Enabling pyenv
eval "$(pyenv init -)"
pyenv virtualenvwrapper

# Heroku binary
PATH="/usr/local/heroku/bin:$PATH"

# Hashicorp tools
PATH="$HOME/programs/packer/bin:$PATH"
PATH="$HOME/programs/terraform/bin:$PATH"

# Node Version Manager
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# add coreutils if available
if [ -f "/usr/local/opt/coreutils/libexec/gnubin" ]; then
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

# ruby env
eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/palazzem/programs/google-cloud-sdk/path.zsh.inc' ]; then
    source '/home/palazzem/programs/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/palazzem/programs/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/home/palazzem/programs/google-cloud-sdk/completion.zsh.inc'
fi

# exporting variables
export PATH

# GPG
export GPG_TTY=$(tty)
