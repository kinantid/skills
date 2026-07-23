# Accessibility in interface copy

**Source**: Adapts content-designer/ux-writing-skill (MIT), aligned with WCAG
2.x guidance. See CREDITS.md.

Accessible copy isn't a variant of the copy - it's the copy. Write for
assistive technology and cognitive load from the first draft.

## Screen readers

- **Label every interactive element with its full job**: "Submit application",
  not "Submit" - screen-reader users often hear controls out of visual context.
- **Links describe their destination out of context**: users navigate by
  pulling up a list of links. "Read our privacy policy" works in that list;
  "Click here" and "Learn more" don't.
- **Errors read together with their field**: the announced text must pair the
  field name with the problem - "Email address: must include @". Never rely on
  proximity alone.
- **ARIA labels** where the visible text is insufficient (icon-only buttons,
  status conveyed by layout) - and keep the ARIA label consistent with the
  visible label where both exist.

## Cognitive load

- 8-14 words per sentence (see benchmarks); one idea per sentence.
- Break dense text into scannable chunks with real headings; predictable,
  repeated patterns beat novel phrasings.
- Front-load: the first two words of a button, link, or heading carry the
  scan.
- State instructions positively ("Choose a date in the future") rather than
  negatively ("Don't pick a past date") - negations are misread under load.

## Multi-modal

- **Never rely on colour alone**: pair every state with text - "Error: email
  required" with the red border, not the border alone.
- Icons get text alternatives; images that carry meaning get alt text that
  carries the same meaning (decorative images get empty alt).
- Contrast is a design token but copy length affects it: long labels get
  truncated into ambiguity on small screens - see localisation headroom in
  the benchmarks file.

## Plain language

- Grade 5-8 for general audiences; define technical terms on first use.
- No idioms, metaphors, or cultural references in strings that get translated
  or read by ESL users - "hit the ground running" does not survive either.
- Common words win: "use" not "utilise", "help" not "facilitate", "about" not
  "approximately".

## Pattern examples

- Button: ❌ "Submit" → ✅ "Submit application"
- Link: ❌ "Click here for more information" → ✅ "Read the setup guide"
- Error: ❌ red text "Invalid" → ✅ "Error: email must include @" + icon
- Form: ❌ placeholder-only field → ✅ visible label, placeholder only for
  format example
