#!/usr/bin/env bash
#
# install.sh — symlink every skill in this repo into ~/.claude/skills
#
# Skills stay in the repo; ~/.claude/skills gets a symlink per skill. Editing a
# file in the repo is instantly live in Claude Code (no copy, no resync). Run
# again any time you add a new skill — it's idempotent.
#
# Usage:
#   ./install.sh           # symlink all skills, skip anything already correct
#   ./install.sh --force   # replace an existing real dir/file at the target
#   ./install.sh --dry-run # show what would happen, change nothing

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
SKILLS_DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

FORCE=false
DRY_RUN=false
for arg in "$@"; do
  case "$arg" in
    --force) FORCE=true ;;
    --dry-run) DRY_RUN=true ;;
    -h|--help) sed -n '2,13p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "Unknown argument: $arg" >&2; exit 2 ;;
  esac
done

if [[ ! -d "$SKILLS_SRC" ]]; then
  echo "No skills/ directory found at $SKILLS_SRC" >&2
  exit 1
fi

$DRY_RUN || mkdir -p "$SKILLS_DEST"

linked=0 skipped=0 relinked=0 conflicts=0

for src in "$SKILLS_SRC"/*/; do
  [[ -d "$src" ]] || continue
  name="$(basename "$src")"
  src="${src%/}"
  dest="$SKILLS_DEST/$name"

  if [[ -L "$dest" ]]; then
    current="$(readlink "$dest")"
    if [[ "$current" == "$src" ]]; then
      echo "ok       $name (already linked)"
      ((skipped++)) || true
      continue
    fi
    echo "relink   $name ($current -> $src)"
    $DRY_RUN || { rm "$dest"; ln -s "$src" "$dest"; }
    ((relinked++)) || true
    continue
  fi

  if [[ -e "$dest" ]]; then
    if $FORCE; then
      echo "replace  $name (was a real directory/file)"
      $DRY_RUN || { rm -rf "$dest"; ln -s "$src" "$dest"; }
      ((relinked++)) || true
    else
      echo "CONFLICT $name already exists as a real path; use --force to replace" >&2
      ((conflicts++)) || true
    fi
    continue
  fi

  echo "link     $name"
  $DRY_RUN || ln -s "$src" "$dest"
  ((linked++)) || true
done

echo
echo "Done. linked=$linked relinked=$relinked already-ok=$skipped conflicts=$conflicts"
echo "Skills directory: $SKILLS_DEST"
$DRY_RUN && echo "(dry run — nothing was changed)"
[[ $conflicts -gt 0 ]] && exit 1 || exit 0
