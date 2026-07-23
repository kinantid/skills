---
name: ux-writing
description: Write, edit, or review interface copy (microcopy) - buttons, labels, titles, error messages, empty states, success messages, notifications, forms, confirmations, onboarding, tooltips, and help text. Use whenever text that appears inside an app, website, or software interface is being written or changed, when reviewing UI strings in code or designs, when the user asks "what should this button/error/empty state say", "review this copy", "is this string clear", or when auditing product content for consistency, accessibility, or tone. Do NOT use for marketing pages, ads, emails, or announcements - that's marketing copy, not interface copy.
---

# UX writing: interface copy that helps people finish the job

Interface copy is the text people read mid-task, usually while trying to do
something else. This skill makes that text purposeful, concise, conversational,
and clear - the four quality standards from Torrey Podmajersky's *Strategic
Writing for UX* - and applies the patterns that good product teams converge on
for each surface (errors, buttons, empty states, forms, and the rest).

It consolidates three credited sources into one working skill: the
[content-designer/ux-writing-skill](https://github.com/content-designer/ux-writing-skill)
foundation (MIT), Jenni Nadler's Wix UX error-message anatomy, and hard-won
in-product conventions (punctuation, length targets, verb precision). See
`CREDITS.md` at the repo root.

## Product overlay: read this first

If `product/PRODUCT.md` exists next to this file, **read it before writing
anything**. It carries the product's own terminology, house punctuation, banned
words, and a pointer to its brand voice guide - and it wins over every generic
default in this skill. If it doesn't exist, ask the user for the product's
domain terms rather than inventing them, and suggest creating one from
`product/PRODUCT.template.md` when the product comes up repeatedly.

## What to load (not all at once)

| Task | Load |
| --- | --- |
| Any UI string (always) | The rules on this page |
| Error messages, warnings, failure states | `references/error-messages.md` |
| Buttons, links, CTAs, titles, forms, empty states, success, notifications, confirmations | `references/patterns.md` (the matching section) |
| Punctuation calls, length limits, reading level | `references/mechanics-and-benchmarks.md` |
| Tone for a stressed, confused, or high-stakes moment | `references/tone.md` |
| Screen-reader, cognitive, or contrast concerns; any accessibility audit | `references/accessibility.md` |

## Before writing

1. **Read the surrounding UI as one block.** Title, description, field labels,
   placeholders, helper text, button text, and the nearby empty/error/success
   states work as a unit. Never rewrite a string in isolation if nearby text
   changes its meaning, and make each visible line do a distinct job - delete
   repeated helper text before polishing wording.
2. **Know what actually happens.** For an error: what triggered it, and is the
   cause knowable? For a button: what exactly does clicking do? For an empty
   state: is it first-use, cleared, or no-results? If the answer is "not sure",
   ask - don't write around the uncertainty.
3. **Place the reader.** Who are they, what are they mid-way through, what do
   they likely feel (frustrated, confused, confident, cautious), and what are
   the stakes? Tone follows from this - `references/tone.md`.

## The floor: rules that apply to every string

- **Second person.** "You" and "your", never "the user". Avoid "we/our" and
  system-voice ("the system", "the application").
- **Front-load.** The action or outcome comes first: "Password must be 8+
  characters", not "For your password, it must be...".
- **Active imperative on actions.** "Delete account", not "Account deletion".
- **Specific verbs, used consistently.** "Delete" for permanent, "Remove" for
  unlink/detach, "Archive" for hide-but-keep. Pick per the product's overlay
  and never mix them for the same operation.
- **Match the product's own terminology.** Use the label the interface already
  shows, and keep domain terms the audience actually uses - jargon to outsiders
  is precision to practitioners. Keep the sentence around the term short.
- **No generic labels.** "OK", "Submit", "Click here", and bare "Learn more"
  lose to a verb + object that says what happens.
- **No blame.** Never "invalid", "illegal", "bad input", or phrasing that
  shames the person - and never pass blame to third parties.
- **Avoid implementation terms** (payload, schema, fallback, prompt, workflow,
  fetch, credentials) unless the surface is explicitly technical.
- **Sentence case everywhere.** "Save your changes", not "Save Your Changes".
- **No exclamation marks.** Proportional, calm confirmation beats cheerleading.
- **Mention AI only when it sets expectations or trust.** Describe the result
  the person gets; name AI features by their real product name, and never let
  the AI label do the persuading.
- **Plain language.** Short sentences (14 words reads at ~90% comprehension),
  everyday words, one clause per sentence where possible. Full benchmarks in
  `references/mechanics-and-benchmarks.md`.

## Edit in four passes

Podmajersky's four standards, applied in order. For each string ask:

1. **Purposeful** - does it move the person toward their goal (and serve the
   product's goal)? If a string has no job, delete it.
2. **Concise** - does every word earn its place? Front-loaded? Within the
   length target for its surface?
3. **Conversational** - would you say it out loud to a coworker? Active voice,
   natural connecting words, zero corporate robot.
4. **Clear** - specific verbs, consistent terms, unambiguous on first read?

## Output format

When delivering strings, give: the string(s) in context (which surface, which
state), a one-line rationale where the choice isn't obvious, and 2-3
alternatives for anything load-bearing (button labels, error headlines,
empty-state CTAs). For audits, list findings by severity with the fix inline.

## Scope boundary

This skill owns text **inside the product**. Marketing pages, ads, campaign
emails, changelogs, and announcements are marketing copy - a different
discipline with different rules. If the task is marketing copy and a dedicated
skill exists (e.g. a brand voice skill), hand over to it; where both apply
(e.g. an in-app upgrade prompt), this skill owns clarity and the brand voice
skill owns vocabulary.
