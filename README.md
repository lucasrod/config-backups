# Config Backups

Backups de configuraciones del sistema.

**Repositorio:** https://github.com/lucasrod/config-backups

## Karabiner-Elements: Remapeo de Teclado Francés/EU

**Archivo:** `karabiner-swap-numbers-symbols.json`
**Ubicación original:** `~/.config/karabiner/assets/complex_modifications/swap_numbers_symbols.json`
**Fecha:** 2026-04-03

### Qué hace

Esta configuración invierte el comportamiento de números y símbolos en teclados franceses/europeos para que sea más práctico escribir código:

- **Números sin Shift:** Escribes `1234567890` directamente (sin presionar Shift)
- **Símbolos con Shift:** Los símbolos especiales requieren Shift
- **Ignora Caps Lock:** El comportamiento es consistente independientemente del estado de Caps Lock

### Mapeo completo

| Sin Shift (nuevo) | Con Shift (nuevo) | Tecla física original |
|-------------------|-------------------|----------------------|
| `1234567890`      | `&é"'(§è!çà`      | Fila de números      |
| `°`               | `)`               | Después del 0        |
| `-`               | `_`               | Tecla =/-            |
| `.`               | `;`               | Tecla ,/.            |
| `/`               | `:`               | Tecla :/:            |
| `+`               | `=`               | Tecla =/+            |
| `@`               | `<`               | Tecla </>            |
| `#`               | `>`               | Tecla @/#            |
| `*`               | `$`               | Tecla $/*            |
| `%`               | `ù`               | Tecla ù/%            |

### Cómo restaurar

#### Opción 1: Script automático (recomendado)

```bash
cd ~/workspace/config-backups
./restore-karabiner.sh
```

#### Opción 2: Manual

1. **Copia el archivo:**
   ```bash
   cp ~/workspace/config-backups/karabiner-swap-numbers-symbols.json \
      ~/.config/karabiner/assets/complex_modifications/swap_numbers_symbols.json
   ```

2. **Activa en Karabiner-Elements:**
   - Abre Karabiner-Elements
   - Ve a **Complex Modifications**
   - Click en **Add rule**
   - Busca "Números sin Shift, símbolos con Shift (ignora Caps Lock)"
   - Click en **Enable**

### Instalación en una nueva máquina

```bash
cd ~/workspace
git clone https://github.com/lucasrod/config-backups.git
cd config-backups
./restore-karabiner.sh
```

### Notas técnicas

- La configuración usa `"optional": ["caps_lock"]` en todos los manipuladores para ignorar Caps Lock
- Solo responde a la tecla Shift (left_shift y right_shift)
- Compatible con cualquier aplicación en macOS
