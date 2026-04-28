#!/bin/bash

set -e

THEME_NAME="Rocky"

# echo "=> Compiling theme..."
# sassc -t expanded gnome-shell/gnome-shell.scss gnome-shell/gnome-shell.css

echo "=> Resetting GNOME theme settings..."
gsettings reset org.gnome.desktop.interface gtk-theme 2>/dev/null || true
gsettings reset org.gnome.desktop.interface icon-theme 2>/dev/null || true
gsettings reset org.gnome.shell.extensions.user-theme name 2>/dev/null || true

sleep 0.5

echo "=> Applying theme..."
gsettings set org.gnome.desktop.interface gtk-theme "$THEME_NAME"
gsettings set org.gnome.shell.extensions.user-theme name "$THEME_NAME"

echo "=> Done! Theme reapplied."