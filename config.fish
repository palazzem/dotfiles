# Interactive shell configuration.

if not status is-interactive
    return
end

# CachyOS defaults (eza aliases, bat manpager, fastfetch greeting, etc.)
if test -f /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
if type -q pyenv
    pyenv init - fish | source
end

# Aliases
alias vim nvim

# fzf key bindings and completion
if type -q fzf
    fzf --fish | source
end