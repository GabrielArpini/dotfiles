#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"
case "${1:-}" in
  ''|--apply) ;;
  *) echo "Usage: $0 [--apply]" >&2; exit 2 ;;
esac
mkdir -p "$CONFIG/omarchy/themes/soir-bleu" "$CONFIG/walker/themes/soir-bleu"
cp -R "$ROOT/omarchy/themes/soir-bleu/." "$CONFIG/omarchy/themes/soir-bleu/"
cp -R "$ROOT/walker/themes/soir-bleu/." "$CONFIG/walker/themes/soir-bleu/"
if [[ ${1:-} == --apply ]]; then
  omarchy theme set soir-bleu
else
  echo 'Installed Soir Bleu. Apply with: omarchy theme set soir-bleu'
fi
