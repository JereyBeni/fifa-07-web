# Audio - FIFA 07 Web

## Soundtrack oficial (40 tracks)

El juego usa el soundtrack licenciado de FIFA 07.  
Los archivos originales en la ISO son `.aud` (formato propietario EA) ubicados en:

```
PSP_GAME/USRDIR/data/eatrax/*.aud
```

Los `.dat` que se extrajeron tienen header `00 1E 02 00` y no son fácilmente convertibles con herramientas públicas por ahora.

## Estrategia del port (Opción A)

Usamos los MP3 ya ripeados de la comunidad (mismo enfoque que la mayoría de ports web):

- Zophar: https://www.zophar.net/music/playstation-portable-psp/fifa-soccer-07
- Khinsider: https://downloads.khinsider.com/game-soundtracks/album/fifa-07-soundtrack

### Cómo convertir

```bash
# 1. Descargá los MP3 y ponelos en:
tools/music_mp3/

# 2. Corré el conversor
bash tools/convert_music.sh

# 3. Los OGG quedan listos en:
assets/audio/music/
```

El script usa `ffmpeg` con calidad Vorbis q5 (buen balance tamaño/calidad para web).

## Lista de tracks

Ver `tools/tracklist.txt`

## Notas técnicas

- Formato objetivo: **OGG Vorbis** (mejor soporte nativo en navegadores que MP3 para looping y streaming)
- Los nombres de archivo se normalizan a minúsculas + guiones bajos
- Más adelante se puede agregar soporte de loop points si se encuentra metadata
