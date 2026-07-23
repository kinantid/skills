# Product overlay for ux-writing

Copy this file to `PRODUCT.md` in this directory and fill it in for your
product. `PRODUCT.md` is gitignored - it stays on your machine and survives
skill updates. When it exists, the skill reads it before writing any string,
and it **wins over every generic default** in the skill.

Keep it short: this is the delta from the skill's defaults, not a second style
guide. If your team already has a brand voice guide, point to it instead of
restating it.

## Product

- **Name**:
- **What it is** (one line):
- **Audiences** (who reads UI strings, in priority order; note ESL/literacy/
  time-pressure factors):

## Voice source

- **Brand voice guide**: <!-- path or URL to the canonical guide; the skill
  defers to it for vocabulary and voice. e.g. a repo path to your marketing
  voice skill's references, or "none - use skill defaults" -->
- **Banned words/phrases beyond the skill's defaults**:
- **Product-truth source**: <!-- where to verify exact UI labels and behaviour
  before writing about them: a repo, design system, or docs -->

## Terminology

Terms to preserve exactly (the words your users actually use - don't
"simplify" these):

<!-- e.g.
- RFI
- Site Diary
- induction (AU) / orientation (US)
-->

Verb assignments (one meaning per verb, product-wide):

- Delete = <!-- permanent -->
- Remove = <!-- unlink/detach -->
- Archive = <!-- hide but keep -->

## House style deltas

<!-- Only where your product differs from the skill defaults, e.g.:
- Em dashes: banned outright (restructure) / allowed in long-form help
- Locale: AU English in source strings; US via transform
- "admin users" allowed when discussing seats; "users" otherwise banned
-->

## Examples that nail it

<!-- 3-5 real strings from your product that hit the voice, to calibrate on:
- "..."
-->
