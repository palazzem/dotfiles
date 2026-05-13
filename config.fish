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

# ssh-agent — reuse an existing agent before spawning a new one.
# Prevents leaking agent processes across tmux panes / terminal tabs.
if test "$DEV_CONTAINER" != 1
    if test -z "$SSH_AGENT_PID"; or not kill -0 $SSH_AGENT_PID 2>/dev/null
        eval (ssh-agent -c) >/dev/null 2>&1
    end
end

# Aliases
alias vim nvim

# fzf key bindings and completion
if type -q fzf
    fzf --fish | source
end

# Startup
fastfetch
