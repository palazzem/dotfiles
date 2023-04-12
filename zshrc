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

# Check Archey version
if type archey3 > /dev/null; then
    ARCHEY_BIN="archey3"
else
    ARCHEY_BIN="archey"
fi

# Set the alias and clear the screen
alias vim="nvim"
alias clear="clear; $ARCHEY_BIN"
clear
