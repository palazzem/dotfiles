# Interactive shell configuration.

if not status is-interactive
    return
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

# Startup
if type -q fastfetch
    fastfetch
end
