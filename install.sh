#!/bin/sh
# Symlinks dotfiles into their expected locations.
# Called by Hanzo's modules/dotfiles.sh after cloning this repo.

set -eu

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Creates parent directories and symlinks a file.
# Usage: link_file <source> <target>
link_file() {
    mkdir -p "$(dirname "$2")"
    ln -sf "$1" "$2"
}

# Fish shell
link_file "$DOTFILES_DIR/config.fish" "$HOME/.config/fish/config.fish"

# Fish conf.d (symlink each file individually to avoid overwriting other conf.d files)
# Guard against empty glob: in POSIX sh without nullglob, an unmatched glob
# expands to the literal pattern string, which would create a broken symlink.
for f in "$DOTFILES_DIR/conf.d"/*.fish; do
    [ -e "$f" ] || continue
    link_file "$f" "$HOME/.config/fish/conf.d/$(basename "$f")"
done

# Git (copy instead of symlink so 'git config --global' writes don't modify the repo)
cp -f "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

# Hyprland
link_file "$DOTFILES_DIR/hyprland/user-config.conf" "$HOME/.config/hypr/config/user-config.conf"

# Hyprland: enable user-config.conf if the source line exists but is commented out.
# CachyOS comments out this line by default in hyprland.conf, which would prevent
# our user-config.conf from being loaded.
hypr_conf="$HOME/.config/hypr/hyprland.conf"
if [ -f "$hypr_conf" ] && grep -q '^#.*source.*user-config.conf' "$hypr_conf"; then
    sed -i 's|^#\(.*source.*user-config.conf\)|\1|' "$hypr_conf"
fi
