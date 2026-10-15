#!/usr/bin/env bash
#
# lint.sh: deterministic checks for the mechanical voice rules.
#
# Judgement calls (BLUF, MOO, tone, receipts) stay in SKILL.md. Anything a
# pattern can catch lives here, so it gets caught every time instead of
# depending on the model remembering a list.
#
# Usage:
#   ./scripts/lint.sh draft.md          # lint a file
#   pbpaste | ./scripts/lint.sh         # lint stdin
#   ./scripts/lint.sh --au draft.md     # also flag US spellings
#   ./scripts/lint.sh --allow-spaced-hyphen draft.md   # " - " is your own habit
#
# Phrase lists:
#   scripts/blocklist.txt   generic AI tells and hedges (committed)
#   voice/blocklist.txt     your personal additions (gitignored, optional)
# One phrase per line, case-insensitive, fixed-string match. Lines starting
# with # are comments. An optional " | hint" suffix is printed with each hit.
#
# Exit: 0 clean, 1 findings, 2 usage error.

set -euo pipefail
export LC_ALL="${LC_ALL:-en_US.UTF-8}"

SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AU=false
ALLOW_SPACED_HYPHEN=false
INPUT=""

for arg in "$@"; do
  case "$arg" in
    --au) AU=true ;;
    --allow-spaced-hyphen) ALLOW_SPACED_HYPHEN=true ;;
    -h|--help) sed -n '2,21p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*) echo "Unknown flag: $arg" >&2; exit 2 ;;
    *) INPUT="$arg" ;;
  esac
done

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT
if [[ -n "$INPUT" ]]; then
  [[ -f "$INPUT" ]] || { echo "No such file: $INPUT" >&2; exit 2; }
  cat "$INPUT" > "$TMP"
else
  cat > "$TMP"
fi

HITS=0
report() { # rule, grep-output, hint
  local rule="$1" out="$2" hint="$3"
  [[ -z "$out" ]] && return 0
  while IFS= read -r line; do
    printf '%s: %s\n' "$rule" "$line"
    HITS=$((HITS + 1))
  done <<< "$out"
  [[ -n "$hint" ]] && printf '  fix: %s\n' "$hint"
  return 0
}

# Dashes: the most common AI tell. Em dash, en dash, or a spaced hyphen doing a dash's job.
report "em-dash" "$(grep -n '—' "$TMP" || true)" "use a comma, colon, full stop, or parentheses"
report "en-dash" "$(grep -n ' – ' "$TMP" || true)" "use a comma, colon, full stop, or parentheses"
$ALLOW_SPACED_HYPHEN || report "spaced-hyphen" "$(grep -nE '[[:alnum:][:punct:]] - [[:alnum:]]' "$TMP" | grep -vE '^[0-9]+:[[:space:]]*- ' || true)" "a spaced hyphen reads as a dash you forgot to fix"

# Compound durations used as adjectives take a hyphen: "a 30-minute chat", "5-minute version".
# Singular unit followed by a word; skips "1 week ago", "1 day of".
report "unhyphenated-duration" "$(grep -n -i -E '\b[0-9]+ (second|minute|hour|day|week|month|year) [[:alpha:]]' "$TMP" | grep -v -i -E '\b[0-9]+ (second|minute|hour|day|week|month|year) (ago|from|later|before|after|left|of|or|and|to|in|on|at)\b' || true)" "hyphenate when it describes a noun: 30-minute chat"

lint_list() { # file
  local file="$1" phrase hint
  [[ -f "$file" ]] || return 0
  while IFS= read -r raw || [[ -n "$raw" ]]; do
    [[ -z "${raw// /}" || "$raw" == \#* ]] && continue
    phrase="${raw%% | *}"
    hint=""
    [[ "$raw" == *" | "* ]] && hint="${raw#* | }"
    report "phrase \"$phrase\"" "$(grep -n -i -F -- "$phrase" "$TMP" || true)" "$hint"
  done < "$file"
}

lint_list "$SKILL_DIR/scripts/blocklist.txt"
lint_list "$SKILL_DIR/voice/blocklist.txt"

if $AU; then
  # US spellings with a common AU/UK form. Word-boundary match, case-insensitive.
  US_WORDS='organiz(e|ed|es|ing|ation)|prioritiz(e|ed|es|ing)|realiz(e|ed|es|ing)|recogniz(e|ed|es|ing)|apologiz(e|ed|es|ing)|summariz(e|ed|es|ing)|analyz(e|ed|es|ing)|color(s|ed|ful)?|favor(s|ed|ite|ites)?|behavior(s|al)?|center(s|ed)?|honor(s|ed)?|neighbor(s|hood)?|defense|offense'
  report "us-spelling" "$(grep -n -i -E "\\b($US_WORDS)\\b" "$TMP" || true)" "use Australian English (organise, colour, centre, behaviour)"
fi

if [[ $HITS -eq 0 ]]; then
  echo "lint: clean"
  exit 0
fi
echo "lint: $HITS finding(s)"
exit 1
