# Configuration
ZSH_THEME="theunraveler"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git fzf)

# Extend ZSH
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Extend Shell
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# System information when opening a new shell or clearing the screen
if type archey3 > /dev/null; then
    alias clear='clear; archey3'
    archey3
fi
if type archey > /dev/null; then
    alias clear='clear; archey -o'
    archey -o
fi
