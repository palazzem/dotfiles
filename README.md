# Dotfiles

Personal configuration files deployed by [Hanzo](https://github.com/palazzem/hanzo).

## Contents

- `config.fish` — Fish shell interactive config (pyenv, ssh-agent, aliases, fzf, fastfetch)
- `conf.d/environment.fish` — Environment variables and PATH
- `gitconfig` — Git aliases, editor, GPG, and color settings
- `hyprland/user-config.conf` — Hyprland key bindings

## Usage

Clone the repository and run the install script:

```bash
git clone https://github.com/palazzem/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/install.sh
```

The install script symlinks configs into their expected locations (`~/.config/fish/`, `~/.config/hypr/`) and copies `gitconfig` to `~/.gitconfig`.

Git user identity is not included in `gitconfig`. Set it after installation:

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```
