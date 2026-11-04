#!/usr/bin/env bash
# Instala a skill tutor no Claude Code, no Hermes ou no OpenClaw.
#   ./install.sh claude            link em ~/.claude/skills/tutor
#   ./install.sh hermes            link em ~/.hermes/skills/tutor
#   ./install.sh openclaw          link em ~/.openclaw/skills/tutor (OPENCLAW_SKILLS_DIR muda o destino)
#   ./install.sh <alvo> --copy     copia em vez de criar link (o link acompanha o git pull)
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
src="$here/tutor"
mode="link"
target=""
for arg in "$@"; do
  case "$arg" in
    --copy) mode="copy" ;;
    claude) target="$HOME/.claude/skills" ;;
    hermes) target="$HOME/.hermes/skills" ;;
    openclaw) target="${OPENCLAW_SKILLS_DIR:-$HOME/.openclaw/skills}" ;;
    *) echo "Uso: $0 claude|hermes|openclaw [--copy]" >&2; exit 2 ;;
  esac
done
[ -n "$target" ] || { echo "Uso: $0 claude|hermes|openclaw [--copy]" >&2; exit 2; }
[ -f "$src/SKILL.md" ] || { echo "Não achei $src/SKILL.md" >&2; exit 1; }

dest="$target/tutor"
mkdir -p "$target"
if [ "$mode" = "link" ] && [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
  echo "Já instalada: $dest -> $src"
  exit 0
fi
if [ -e "$dest" ] || [ -L "$dest" ]; then
  # Fora da pasta de skills: um backup ali seria carregado como uma segunda skill tutor.
  backup="$HOME/.tutor-skill-backup/$(basename "$target")-$(date +%Y%m%d%H%M%S)"
  mkdir -p "$(dirname "$backup")"
  mv "$dest" "$backup"
  echo "Havia outra skill tutor; movida para $backup"
fi
if [ "$mode" = "copy" ]; then
  cp -R "$src" "$dest"
  echo "Copiada para $dest"
else
  ln -s "$src" "$dest"
  echo "Link criado: $dest -> $src"
fi
