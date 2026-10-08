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

## Estado actual

- [x] Assets recibidos (Parte 1) — música (.dat), meshes (.msh), fuente y PNG
- [ ] Investigar cómo OptiProjects hizo el PES 6 (PSP → WASM)
- [ ] Extraer y analizar la estructura de archivos de FIFA 07 PSP
- [ ] Evaluar recompilación / port nativo
- [ ] Online (opcional)
- [ ] Controles táctiles + gamepad
- [ ] Soporte de option files / parches

## Assets recibidos (Parte 1)

Se recibieron archivos extraídos (parte 1):

### Música / Audio (.dat)
Archivos nombrados por artistas del soundtrack (Muse, Keane, Epik High, Cabas, Seu Jorge, etc.).  
Parecen contenedores de audio del juego (formato propietario, header `00 1E 02 00...`).

### Meshes (.msh)
Formato SHPMP (posible mesh/partículas/UI del menú o efectos).  
Ejemplos: `bubbles.msh`, `coreburst.msh`, `fireworks_bkg.msh`, etc.

### Otros
- `lucida10.mfn` → fuente (FntM)
- `image.png` → imagen auxiliar

**Nota:** Los binarios grandes se organizaron localmente. Para subirlos al repo conviene usar Git LFS o subirlos manualmente en una carpeta `assets/`.

## Por qué PSP

La versión de PSP es mucho más viable para llevar al navegador (como demostró el PES 6).  
PS2 es bastante más pesado actualmente.

## Referencia

- PES 6 Web: [pes6.optijuegos.net](https://pes6.optijuegos.net/)

---

**Repo enfocado en port real de la versión PSP.**  
Cualquier colaboración es bienvenida.

🔥 Vamos a hacer que pase.
