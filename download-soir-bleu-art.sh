#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DEST="$ROOT/omarchy/themes/soir-bleu/backgrounds"
TEMP="$(mktemp "$DEST/.soir-bleu-XXXXXX")"
trap 'rm -f "$TEMP"' EXIT
curl --fail --location --retry 2 \
  'https://whitneymedia.org/assets/artwork/6081/70_1208_cropped.jpg' -o "$TEMP"
magick identify "$TEMP" >/dev/null
mv "$TEMP" "$DEST/00-soir-bleu-hopper.jpg"
echo 'Painting downloaded. Run install-soir-bleu.sh again to copy it to Omarchy.'
