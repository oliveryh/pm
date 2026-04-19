#!/usr/bin/env bash
# check-unused-media.sh
# Finds files in Media/ that are not referenced by any .md file.
# Usage: ./scripts/check-unused-media.sh [--dry-run] [--delete]
#   --dry-run  List unused files without deleting (default behaviour)
#   --delete   Delete unused files (prompts for confirmation unless --yes is also set)
#   --yes      Skip confirmation prompt when used with --delete

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MEDIA_DIR="$REPO_ROOT/Media"
DRY_RUN=true
DELETE=false
YES=false

for arg in "$@"; do
  case "$arg" in
    --delete)   DELETE=true; DRY_RUN=false ;;
    --dry-run)  DRY_RUN=true; DELETE=false ;;
    --yes)      YES=true ;;
    *) echo "Unknown option: $arg" >&2; exit 1 ;;
  esac
done

unused=()

while IFS= read -r -d '' filepath; do
  filename=$(basename "$filepath")
  if ! grep -rqF "$filename" --include="*.md" "$REPO_ROOT" 2>/dev/null; then
    unused+=("$filepath")
  fi
done < <(find "$MEDIA_DIR" -maxdepth 1 -type f -print0)

total_unused=${#unused[@]}

if [[ $total_unused -eq 0 ]]; then
  echo "No unused media files found."
  exit 0
fi

echo "Found $total_unused unused file(s) in Media/:"
echo ""
for f in "${unused[@]}"; do
  echo "  $(basename "$f")"
done
echo ""

if $DRY_RUN; then
  echo "[dry-run] No files deleted. Run with --delete to remove them."
  exit 0
fi

if ! $YES; then
  read -r -p "Delete these $total_unused file(s)? [y/N] " confirm
  [[ "$confirm" =~ ^[Yy]$ ]] || { echo "Aborted."; exit 0; }
fi

for f in "${unused[@]}"; do
  rm "$f"
  echo "Deleted: $(basename "$f")"
done

echo ""
echo "Done. $total_unused file(s) deleted."
