# Interactive shell configuration.
# Loaded only for interactive fish sessions.

if not status is-interactive
    return
end

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
if type -q pyenv
    pyenv init - fish | source
end

# ssh-agent (skip in dev containers where agent forwarding is used)
# Check for an existing agent before spawning to avoid creating a new
# process on every interactive shell (e.g., each tmux pane or terminal tab).
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
