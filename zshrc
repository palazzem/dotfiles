# Configuration
ZSH_THEME="theunraveler"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git fzf)

# Extend ZSH
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Extend Shell
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
