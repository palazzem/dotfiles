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

# Initializing pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Expect SSH agent forwarding if in a dev container
[ -z "$DEV_CONTAINER" ] || [ "$DEV_CONTAINER" != "1" ] && eval "$(ssh-agent)" > /dev/null

# Set the alias and clear the screen
alias vim="nvim"
alias clear="clear; fastfetch"
clear
