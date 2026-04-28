#!/usr/bin/env bash

set -e

THEME_NAME="Rocky"

# raiz do projeto (onde o script está)
PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"

# pasta do tema dentro do projeto
SOURCE_DIR="$PROJECT_ROOT/themes/$THEME_NAME"
SOURCE_DIR="$PROJECT_ROOT"

# destino no GNOME
TARGET_DIR="$HOME/.themes/$THEME_NAME"

echo "→ Garantindo ~/.themes..."
mkdir -p "$HOME/.themes"

echo "→ Removendo destino antigo..."
rm -rf "$TARGET_DIR"

echo "→ Criando symlink..."
ln -s "$SOURCE_DIR" "$TARGET_DIR"

echo "✔ Link criado:"
ls -l "$TARGET_DIR"