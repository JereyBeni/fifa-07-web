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

- [ ] Investigar cómo OptiProjects hizo el PES 6 (PSP → WASM)
- [ ] Extraer y analizar la estructura de archivos de FIFA 07 PSP
- [ ] Evaluar recompilación / port nativo
- [ ] Online (opcional)
- [ ] Controles táctiles + gamepad
- [ ] Soporte de option files / parches

## Por qué PSP

La versión de PSP es mucho más viable para llevar al navegador (como demostró el PES 6).  
PS2 es bastante más pesado actualmente.

## Referencia

- PES 6 Web: [pes6.optijuegos.net](https://pes6.optijuegos.net/)

---

**Repo enfocado en port real de la versión PSP.**  
Cualquier colaboración es bienvenida.

🔥 Vamos a hacer que pase.