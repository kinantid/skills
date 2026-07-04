#!/usr/bin/env bash
#
# check-principle-coverage.sh
#
# When a new principle is added under principles/, it's easy to forget to wire
# it into SKILL.md's registry and into the audience playbooks. This script
# cross-references every principle against SKILL.md and the audiences/ files,
# prints a coverage matrix, and flags gaps.
#
# Matching is forgiving: case-insensitive, with hyphens and spaces treated as
# equivalent on both sides. So the file `right-amount-of-context.md` is counted
# as referenced whether an audience writes "right-amount-of-context",
# "principles/right-amount-of-context.md", or the prose "Right amount of
# context". It is a heuristic, not a parser: read the matrix, don't trust it
# blindly.
#
# Usage:
#   ./scripts/check-principle-coverage.sh           # print the matrix
#   ./scripts/check-principle-coverage.sh --quiet   # print only the gaps
#   ./scripts/check-principle-coverage.sh --strict  # exit 1 on any orphan too
#
# Exit codes:
#   0  every principle appears in SKILL.md (default), and no orphans (--strict)
#   1  a principle is missing from SKILL.md, or (--strict) an audience orphan
#   2  bad layout / usage
#
# The must-fix signal is "missing from SKILL.md": that means a principle isn't
# in the registry at all. An audience "orphan" is advisory: a principle needn't
# live in every audience, but an orphan often means a playbook is out of date.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

PRINCIPLES_DIR="$SKILL_DIR/principles"
AUDIENCES_DIR="$SKILL_DIR/audiences"
SKILL_MD="$SKILL_DIR/SKILL.md"

QUIET=0
STRICT=0
for arg in "$@"; do
  case "$arg" in
    --quiet)  QUIET=1 ;;
    --strict) STRICT=1 ;;
    *) echo "usage: $0 [--quiet] [--strict]" >&2; exit 2 ;;
  esac
done

if [ ! -d "$PRINCIPLES_DIR" ] || [ ! -d "$AUDIENCES_DIR" ] || [ ! -f "$SKILL_MD" ]; then
  echo "error: expected principles/, audiences/ and SKILL.md under $SKILL_DIR" >&2
  exit 2
fi

# normalise: lowercase, hyphens -> spaces, collapse runs of whitespace.
normalise() { tr '[:upper:]' '[:lower:]' | tr '-' ' ' | tr -s '[:space:]' ' '; }

# Pre-normalise the haystacks once.
skill_norm="$(normalise < "$SKILL_MD")"

audiences=()
audience_norms=()
while IFS= read -r f; do
  audiences+=("$f")
  audience_norms+=("$(normalise < "$f")")
done < <(find "$AUDIENCES_DIR" -maxdepth 1 -name '*.md' | sort)

orphans=0
missing_from_skill=0

if [ "$QUIET" -eq 0 ]; then
  printf '%-32s | %-8s | %s\n' "principle" "SKILL.md" "audiences referencing it"
  printf -- '---------------------------------+----------+------------------------------\n'
fi

for p in $(find "$PRINCIPLES_DIR" -maxdepth 1 -name '*.md' | sort); do
  stem="$(basename "$p" .md)"                 # e.g. right-amount-of-context
  needle="$(printf '%s' "$stem" | normalise)" # e.g. right amount of context

  in_skill="no"
  case "$skill_norm" in
    *"$needle"*) in_skill="yes" ;;
    *) missing_from_skill=$((missing_from_skill + 1)) ;;
  esac

  refs=""
  i=0
  for a in "${audiences[@]}"; do
    case "${audience_norms[$i]}" in
      *"$needle"*)
        name="$(basename "$a" .md)"
        refs="${refs:+$refs, }$name"
        ;;
    esac
    i=$((i + 1))
  done

  if [ -z "$refs" ]; then
    orphans=$((orphans + 1))
    [ "$QUIET" -eq 1 ] && echo "ORPHAN (no audience references): $stem"
  fi
  [ "$in_skill" = "no" ] && [ "$QUIET" -eq 1 ] && echo "MISSING FROM SKILL.md: $stem"

  if [ "$QUIET" -eq 0 ]; then
    printf '%-32s | %-8s | %s\n' "$stem" "$in_skill" "${refs:-<none>}"
  fi
done

if [ "$QUIET" -eq 0 ]; then
  echo
  echo "Summary: $missing_from_skill principle(s) missing from SKILL.md; $orphans referenced by no audience."
  echo "Fix any 'missing from SKILL.md' first: those aren't in the registry."
  echo "Review orphans: a principle needn't be in every audience, but an orphan often means a playbook is stale."
fi

# Default gate: only the registry omission is fatal. --strict also gates orphans.
rc=0
[ "$missing_from_skill" -gt 0 ] && rc=1
[ "$STRICT" -eq 1 ] && [ "$orphans" -gt 0 ] && rc=1
exit "$rc"
