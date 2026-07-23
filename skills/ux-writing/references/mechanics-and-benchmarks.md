# Mechanics and benchmarks

**Source**: Benchmarks as compiled in content-designer/ux-writing-skill (MIT),
which draws on published readability research (sentence-length comprehension
figures popularised by the American Press Institute). Punctuation conventions
generalised from in-product style guides. See CREDITS.md.

The product overlay (`product/PRODUCT.md`) can override any rule here; these
are the defaults.

## Punctuation

- **No full stop** on single-line strings that read as labels: buttons,
  titles, field labels, empty-state headlines, single-sentence inline errors
  acting as a headline
- **Full stop** on helper text, descriptions, and anything with two or more
  sentences
- **Question mark** on confirmations: "Delete template?", "Archive project?"
- **No exclamation marks**
- **No em or en dashes** in UI strings by default - restructure instead;
  short strings shouldn't need a separator (products with a stronger house
  rule set it in the overlay)
- **Sentence case everywhere**: capitalise the first word and proper nouns
  only
- **Straight apostrophes** (') in code-defined strings; curly quotes only
  where the rendering layer guarantees them
- **"&" only inside proper names**; otherwise "and"
- **Numerals for numbers** ("2 RFIs", not "two RFIs") - digits scan faster in
  UI

## Length targets

| Surface | Target | Hard max |
| --- | --- | --- |
| Buttons / CTAs | 2-4 words | 6 words |
| Titles | 3-6 words | 40 characters |
| Error message (incl. fix) | 12-18 words | - |
| Helper / instruction sentence | ≤14 words | 20 words |
| Empty-state body | 1 sentence, ≤20 words | - |
| Notification title + body | 10-15 words | - |
| Line length (body copy) | 40-60 characters | - |

## Comprehension and reading level

- ≤8 words per sentence: ~100% comprehension. ≤14 words: ~90%. Past 25 words
  comprehension falls off a cliff - split the sentence.
- Two clauses joined by "and"/"but" is the tell: split it.
- Target grade 5-8 reading level for general audiences, 9-10 for professional
  tools. Time pressure and stress lower everyone's effective reading level -
  an expert mid-incident reads like a novice.
- **Domain jargon is exempt, sentence complexity is not.** Keep the term the
  audience uses ("RFI", "induction", "escrow"); keep the sentence around it
  short. Simplifying the term patronises; simplifying the sentence helps.
- Check with a word count first; Hemingway Editor or Flesch-Kincaid when it's
  contested.

## Localisation headroom

If the product ships in more than one language, leave expansion room: German
and Portuguese run 30-40% longer than English. A button that fills its
container in English will truncate. Prefer shorter labels and test the longest
locale, and never concatenate translated fragments into sentences.
