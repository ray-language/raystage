# RayStage

Un banco de pruebas de los **tipos de ventana** y la **geometría en caliente** de `std/ui`
(raylang **1.24**, M260), escrito en [raylang](https://raylang.dev). Cada botón del panel de
control es una llamada nativa.

| Característica (M260) | Dónde se ve |
|---|---|
| `kind = "borderless"` | El splash del arranque (1,4 s, siempre encima, centrado) y la *Floating note*, sin marco ni título, con su propio botón ✕ y arrastrable por el fondo en macOS |
| `kind = "panel"` + `parent` + `always_on_top` | La *Command Palette* (Esc la cierra, Enter elige) y el *Inspector*, paneles de utilidad hijos de la ventana principal: quedan encima de ella y la siguen |
| `set_position` | El Inspector se acopla a la izquierda (40, 120) y la nota flotante en (80, 80) |
| `set_fullscreen` | Botones *Full screen on/off* y el menú Window (⌘⌃F) |
| `set_always_on_top` | Botones *Always on top* sobre la ventana principal |
| `set_size` | Presets 800×600, 1200×760 y 640×420 (el mínimo declarado) |
| `center`, `minimize`, `maximize` | Botones homónimos |
| Eventos `focused` / `closed` | El pie del panel muestra qué ventana tiene el foco y avisa al cerrarse una secundaria |

## Uso

```sh
ray run     # raylang >= 1.27.14
ray test    # tests del modelo (parseo de mensajes y tamaños, roles → kinds)
make smoke  # arranque headless (CI, sin display)
```
