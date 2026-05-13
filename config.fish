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

# GPG needs the current tty for pinentry passphrase prompts.
# Only meaningful in interactive sessions where a tty is attached.
set -gx GPG_TTY (tty)

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
