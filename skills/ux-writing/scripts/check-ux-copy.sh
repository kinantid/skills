#!/bin/bash
# check-ux-copy.sh: mechanical net for interface strings.
#
# Usage: ./scripts/check-ui-copy.sh <strings-file> [<strings-file> ...]
#
# Put one UI string per line (a headline, a body line, a button label). If
# UX_COPY_KILL_LIST points at a brand kill-list checker (product/PRODUCT.md
# names it), that runs first; then the UI tells below. Hard hits set exit 1; review
# hits are printed for a judgement call and do not fail the run.
#
# This catches patterns only. The diagnosis, receipts, and lever steps in
# SKILL.md are still required: a string can pass here and still be wrong.
set -uo pipefail

if [[ $# -lt 1 ]]; then
  echo "usage: $0 <strings-file> [<strings-file> ...]" >&2
  exit 2
fi

KILL_LIST="${UX_COPY_KILL_LIST:-}"

FAIL=0

if [[ -n "$KILL_LIST" ]]; then
  if [[ -f "$KILL_LIST" ]]; then
    bash "$KILL_LIST" "$@" || FAIL=1
  else
    echo "note: UX_COPY_KILL_LIST=$KILL_LIST not found; brand kill list skipped" >&2
  fi
fi

# Hard: blame, cutesy, generic failure, system voice, untranslated codes.
HARD_PATTERNS=(
  '\binvalid\b' '\billegal\b' 'bad input' '\boops\b' '\bwhoops\b' '\buh[- ]oh\b'
  'something went wrong' 'an error (has )?occurred' 'unknown error'
  '\bthe user\b' '\bthe system\b' '\bthe application\b'
  '\berror (code )?[0-9]{3,}\b'
)

# Review: often fine, often a smell. Each needs a reason to stay.
REVIEW_PATTERNS=(
  # Implementation terms
  '\bpayload\b' '\bschema\b' '\bfallback\b' '\bfetch(ed|ing)?\b' '\bcredentials\b'
  '\bendpoint\b' '\bnull\b' '\bundefined\b' '\btimed out\b' '\bsession\b'
  # Passive voice that hides who acted
  '\b(was|were|has been|have been) made\b'
  # Tone to weigh against the stakes
  '\bplease\b' '\bsorry\b'
  # A message hedging between causes the system may already know
  ', or (your|the|this)\b'
)

# Generic labels, flagged only when they are the whole string.
GENERIC_LABELS='^[[:space:]]*["'"'"'[]?(ok|okay|submit|click here|learn more|yes|no|continue)[]"'"'"']?[[:space:]]*$'

for file in "$@"; do
  if [[ ! -f "$file" ]]; then
    echo "MISSING: $file" >&2
    FAIL=1
    continue
  fi

  for p in "${HARD_PATTERNS[@]}"; do
    hits=$(grep -inE "$p" "$file" || true)
    if [[ -n "$hits" ]]; then
      echo "[$file] ux-copy pattern '$p':"
      echo "$hits"
      FAIL=1
    fi
  done

  if grep -n '!' "$file"; then
    echo "^ exclamation mark in $file (calm confirmation beats cheerleading)" >&2
    FAIL=1
  fi

  hits=$(grep -inE "$GENERIC_LABELS" "$file" || true)
  if [[ -n "$hits" ]]; then
    echo "$hits"
    echo "^ generic label in $file (use a verb + object that says what happens)" >&2
    FAIL=1
  fi

  for p in "${REVIEW_PATTERNS[@]}"; do
    hits=$(grep -inE "$p" "$file" || true)
    if [[ -n "$hits" ]]; then
      echo "[$file] review '$p':"
      echo "$hits"
    fi
  done
done

if [[ $FAIL -eq 0 ]]; then
  echo "CLEAN: no hard ux-copy violations in $*"
fi
exit $FAIL
