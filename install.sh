#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles..."

# Theme
mkdir -p ~/.config/omarchy/themes/nighthawks
cp -r "$DOTFILES/omarchy/themes/nighthawks/"* ~/.config/omarchy/themes/nighthawks/

# Hyprland overrides
cp "$DOTFILES/hypr/looknfeel.conf" ~/.config/hypr/looknfeel.conf
cp "$DOTFILES/hypr/hyprlock.conf"  ~/.config/hypr/hyprlock.conf

# Waybar
cp "$DOTFILES/waybar/config.jsonc" ~/.config/waybar/config.jsonc
cp "$DOTFILES/waybar/style.css"    ~/.config/waybar/style.css

# Fish
cp "$DOTFILES/fish/config.fish" ~/.config/fish/config.fish

# Starship
cp "$DOTFILES/starship.toml" ~/.config/starship.toml

# Walker
mkdir -p ~/.config/walker/themes/nighthawks
cp "$DOTFILES/walker/config.toml" ~/.config/walker/config.toml
cp "$DOTFILES/walker/themes/nighthawks/style.css"  ~/.config/walker/themes/nighthawks/
cp "$DOTFILES/walker/themes/nighthawks/layout.xml" ~/.config/walker/themes/nighthawks/

# Tmux
mkdir -p ~/.config/tmux
cp "$DOTFILES/tmux/tmux.conf" ~/.config/tmux/tmux.conf

# Mako
cp "$DOTFILES/mako/config" ~/.config/mako/config

# Apply theme and font
omarchy-theme-set "nighthawks"
omarchy-font-set "VictorMono Nerd Font"

# Restart services
omarchy-restart-waybar
makoctl reload

echo "Done."
