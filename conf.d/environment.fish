# Environment variables and PATH configuration.
# Loaded automatically by fish for all sessions (login, interactive, script).

# Editor
set -gx EDITOR nvim

# Go
set -gx GOPATH $HOME/programs/go

# ssh-agent — use the systemd user service socket.
# Requires: systemctl --user enable --now ssh-agent
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

# PATH
fish_add_path $HOME/.local/bin
fish_add_path $GOPATH/bin

# Google Cloud SDK
if test -f $HOME/.local/share/google-cloud-sdk/path.fish.inc
    source $HOME/.local/share/google-cloud-sdk/path.fish.inc
end
if test -f $HOME/.local/share/google-cloud-sdk/completion.fish.inc
    source $HOME/.local/share/google-cloud-sdk/completion.fish.inc
end
