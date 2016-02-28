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
EDITOR="nvim"
alias vim=nvim

# plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Python
source virtualenvwrapper_lazy.sh

# exports all installed python version (via Pythonz) to
# the user PATH
if [[ -s $HOME/.pythonz/etc/bashrc ]]
then
    source $HOME/.pythonz/etc/bashrc
    PATH=$PATH:$(pythonz list -p | awk 'BEGIN {ORS=":"} /^ / {print $2"/bin"}')
fi

# Heroku binary
export PATH="/usr/local/heroku/bin:$PATH"

# Node Version Manager
source "$HOME/.nvm/nvm.sh"

# system information when opening a new shell
# or after clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi