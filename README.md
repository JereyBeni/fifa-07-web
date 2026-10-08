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
│   │   └── music/          # Tracks del soundtrack (.ogg)
│   ├── meshes/             # Modelos / efectos (.msh → glTF o custom)
│   ├── textures/           # Texturas convertidas
│   ├── fonts/              # Fuentes (.mfn → web fonts)
│   ├── gui/                # Elementos de interfaz
│   └── data/               # Datos de juego (equipos, ligas, etc.)
├── src/                    # Código fuente del port (JS / WASM)
├── docs/                   # Documentación técnica
├── tools/                  # Scripts de conversión
│   ├── convert_music.sh    # MP3 → OGG
│   ├── music_mp3/          # Acá van los MP3 descargados
│   └── tracklist.txt       # Lista de los 40 tracks
└── README.md
```

## Estado actual

- [x] Repo creado + estructura de carpetas
- [x] Assets recibidos (Parte 1 + Parte 2)
- [x] Sistema de conversión de música listo (Opción A)
- [ ] Convertir y subir los 40 tracks a `assets/audio/music/`
- [ ] Analizar formato SHPM de los .msh
- [ ] Investigar cómo OptiProjects hizo el PES 6 (PSP → WASM)
- [ ] Extraer y analizar la estructura completa de archivos de FIFA 07 PSP
- [ ] Controles táctiles + gamepad
- [ ] Online (opcional)

## Soundtrack (40 tracks)

Lista completa en `tools/tracklist.txt`.

**Cómo preparar el audio:**

1. Descargá los MP3 desde:
   - [Zophar - FIFA Soccer 07](https://www.zophar.net/music/playstation-portable-psp/fifa-soccer-07)
   - [Khinsider](https://downloads.khinsider.com/game-soundtracks/album/fifa-07-soundtrack)

2. Poné todos los `.mp3` en la carpeta:
   ```
   tools/music_mp3/
   ```

3. Corré el conversor:
   ```bash
   bash tools/convert_music.sh
   ```

4. Los `.ogg` quedan listos en `assets/audio/music/`

Documentación completa: [docs/audio.md](docs/audio.md)

## Assets recibidos

### Música
40 tracks del soundtrack oficial (Keane, Muse, Epik High, Seu Jorge, Plastilina Mosh, The Feeling, Polysics, Cabas, Outlandish, Paul Oakenfold, etc.).

### Meshes (.msh)
Formato SHPM (meshes / partículas / UI / efectos).

### Fuentes
- `lucida10.mfn`

## Por qué PSP

La versión de PSP es mucho más viable para llevar al navegador (como demostró el PES 6).  
PS2 es bastante más pesado actualmente.

## Referencia

- PES 6 Web: [pes6.optijuegos.net](https://pes6.optijuegos.net/)

---

**Repo enfocado en port real de la versión PSP.**  
Cualquier colaboración es bienvenida.

🔥 Vamos a hacer que pase.
