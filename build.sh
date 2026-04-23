#!/bin/bash

set -e

SRC="gnome-shell/gnome-shell.scss"
OUT="gnome-shell/gnome-shell.css"

echo "Building Rocky GNOME Theme..."

sassc -t expanded "$SRC" "$OUT"

echo "Build complete → $OUT"