#!/bin/bash
# Script de restauración para Karabiner-Elements keyboard remapping

set -e

CONFIG_FILE="karabiner-swap-numbers-symbols.json"
TARGET_DIR="$HOME/.config/karabiner/assets/complex_modifications"
TARGET_FILE="$TARGET_DIR/swap_numbers_symbols.json"

echo "🔧 Restaurando configuración de Karabiner..."

# Crear directorio si no existe
mkdir -p "$TARGET_DIR"

# Copiar archivo
cp "$CONFIG_FILE" "$TARGET_FILE"

echo "✅ Archivo copiado a: $TARGET_FILE"
echo ""
echo "📋 Próximos pasos:"
echo "1. Abre Karabiner-Elements"
echo "2. Ve a Complex Modifications"
echo "3. Click en 'Add rule'"
echo "4. Busca 'Números sin Shift, símbolos con Shift (ignora Caps Lock)'"
echo "5. Click en 'Enable'"
echo ""
echo "✨ ¡Listo!"
