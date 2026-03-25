#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Nighthawks dotfiles..."

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

# Apply theme and font
omarchy-theme-set "nighthawks"
omarchy-font-set "VictorMono Nerd Font"

# Restart waybar
omarchy-restart-waybar

echo "Done. Nighthawks is live."
