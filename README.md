# FIFA 07 Web

Proyecto para llevar **FIFA 07 (versión PSP)** al navegador, inspirado en el port web de PES 6 de OptiProjects.

## Objetivo

Hacer que FIFA 07 de PSP se pueda jugar **directo en el navegador**, sin instalar nada y **sin que el usuario tenga que subir ninguna ROM**.

## Enfoque técnico (importante)

**No** vamos a poner un emulador que cargue la ISO completa como si fuera un CD virtual.

El plan real es:

1. Extraer todos los archivos de la ISO/CSO de FIFA 07 PSP (texturas, modelos, sonidos, datos de equipos, scripts, etc.)
2. Convertir/adaptar esos assets para que funcionen nativamente en el navegador (WebAssembly + WebGL)
3. Reimplementar o adaptar el motor del juego para que use esos archivos directamente desde la web

Es un **port**, no una emulación clásica.

## Estructura del repositorio

```
fifa-07-web/
├── assets/
│   ├── audio/
│   │   └── music/          # Tracks del soundtrack (convertidos a .ogg/.mp3)
│   ├── meshes/             # Modelos / efectos (.msh → glTF o custom)
│   ├── textures/           # Texturas convertidas
│   ├── fonts/              # Fuentes (.mfn → web fonts)
│   ├── gui/                # Elementos de interfaz
│   └── data/               # Datos de juego (equipos, ligas, etc.)
├── src/                    # Código fuente del port (JS / WASM)
├── docs/                   # Documentación técnica y reverse engineering
├── tools/                  # Scripts de extracción y conversión
└── README.md
```

## Estado actual

- [x] Repo creado + estructura de carpetas
- [x] Assets recibidos (Parte 1 + Parte 2) — música (.dat), meshes (.msh), fuente
- [ ] Convertir tracks de audio (.dat → .ogg)
- [ ] Analizar formato SHPM de los .msh
- [ ] Investigar cómo OptiProjects hizo el PES 6 (PSP → WASM)
- [ ] Extraer y analizar la estructura completa de archivos de FIFA 07 PSP
- [ ] Evaluar recompilación / port nativo
- [ ] Controles táctiles + gamepad
- [ ] Online (opcional)

## Assets recibidos

### Música / Audio (.dat) — Parte 1 + Parte 2

40 tracks del soundtrack oficial de FIFA 07 (formato propietario EA, header `00 1E 02 00`).

Artistas incluidos: Keane, Muse, Epik High, Seu Jorge, Plastilina Mosh, The Feeling, Polysics, Cabas, Outlandish, Paul Oakenfold, y muchos más.

**Ubicación final:** `assets/audio/music/`

### Meshes (.msh)
Formato SHPM (meshes / partículas / UI / efectos).
Ejemplos: `bubbles.msh`, `coreburst.msh`, `fireworks_bkg.msh`, `controlpad.msh`, etc.

**Ubicación final:** `assets/meshes/`

### Fuentes
- `lucida10.mfn` → fuente del juego

**Ubicación final:** `assets/fonts/`

## Por qué PSP

La versión de PSP es mucho más viable para llevar al navegador (como demostró el PES 6).  
PS2 es bastante más pesado actualmente.

## Referencia

- PES 6 Web: [pes6.optijuegos.net](https://pes6.optijuegos.net/)

---

**Repo enfocado en port real de la versión PSP.**  
Cualquier colaboración es bienvenida.

🔥 Vamos a hacer que pase.
