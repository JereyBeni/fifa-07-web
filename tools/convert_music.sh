#!/bin/bash
# convert_music.sh
# Convierte MP3 del soundtrack de FIFA 07 a OGG (ideal para web)
# Uso:
#   1. Poné los MP3 en tools/music_mp3/
#   2. Corré: bash tools/convert_music.sh
#   3. Los OGG quedan en assets/audio/music/

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
INPUT_DIR="$SCRIPT_DIR/music_mp3"
OUTPUT_DIR="$REPO_ROOT/assets/audio/music"

mkdir -p "$INPUT_DIR"
mkdir -p "$OUTPUT_DIR"

echo "=== FIFA 07 Music Converter ==="
echo "Input:  $INPUT_DIR"
echo "Output: $OUTPUT_DIR"
echo ""

if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg no está instalado."
    echo "Instalá con: sudo apt install ffmpeg   (o brew install ffmpeg)"
    exit 1
fi

count=0
for mp3 in "$INPUT_DIR"/*.mp3 "$INPUT_DIR"/*.MP3; do
    [ -f "$mp3" ] || continue

    filename=$(basename "$mp3")
    name="${filename%.*}"
    # normalizar nombre a minúsculas y guiones bajos
    name=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '_' | tr -cd 'a-z0-9_')

    out="$OUTPUT_DIR/${name}.ogg"

    echo "Convirtiendo: $filename → ${name}.ogg"
    ffmpeg -y -i "$mp3" -c:a libvorbis -q:a 5 "$out" 2>/dev/null

    count=$((count + 1))
done

if [ $count -eq 0 ]; then
    echo ""
    echo "No se encontraron MP3 en $INPUT_DIR"
    echo ""
    echo "Descargá el soundtrack de FIFA 07 (PSP) desde:"
    echo "  - https://www.zophar.net/music/playstation-portable-psp/fifa-soccer-07"
    echo "  - https://downloads.khinsider.com/game-soundtracks/album/fifa-07-soundtrack"
    echo ""
    echo "Poné los .mp3 en: tools/music_mp3/"
    echo "y volvé a correr este script."
    exit 1
fi

echo ""
echo "Listo! Se convirtieron $count tracks."
echo "Los OGG están en: assets/audio/music/"
