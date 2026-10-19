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
`CREDITS.md` in this directory.

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
| Final check before delivering | `scripts/check-ux-copy.sh` |

## Before writing

1. **Read the surrounding UI as one block.** Title, description, field labels,
   placeholders, helper text, button text, and the nearby empty/error/success
   states work as a unit. Never rewrite a string in isolation if nearby text
   changes its meaning, and make each visible line do a distinct job - delete
   repeated helper text before polishing wording.
2. **Know what actually happens, with a receipt.** For an error: what
   triggered it, and is the cause knowable? For a button: what exactly does
   clicking do? For an empty state: is it first-use, cleared, or no-results?
   Any string that says what the system did or will do needs a source - see
   Step 2 of the workflow. If the answer is "not sure", ask; don't write
   around the uncertainty.
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

## Workflow

**Facts are your job; decisions are the user's.** Look up what the code,
ticket, or design already answers. Ask only about what the product should do
and which option to ship.

### Step 1: Pick the mode

| Mode | Input | Default when |
| --- | --- | --- |
| **Write** | A surface or state with no copy yet | No draft is given |
| **Review** | Draft strings (a PR, a Figma frame, a Slack thread asking "is this clear?") | A draft is pasted or linked |
| **Audit** | A whole screen, flow, or module | Asked to audit or check consistency |

For a Slack link, read the whole thread and every attached screenshot first:
the surface (toast, banner, modal) and nearby UI change the answer.

### Step 2: Gather receipts

A receipt is a claim about product behaviour paired with its source: code
(file:line), a ticket, a spec, or a current design. List every claim the copy
makes or implies - what failed, why, what is safe, what the button does, what
the recovery action keeps or throws away - and source each one.

- Sourced: write it plainly.
- Unsourced: it goes in **Check with eng**, worded as a yes/no question, and
  the draft marks the assumption. Never ship unverified reassurance ("Your
  changes are saved"); a false reassurance is worse than none.
- Labels the copy points at ("Refresh", "Discard changes") come from product
  truth, not memory.

### Step 3: Diagnose before rewriting

Name what each string breaks before fixing it:

| Smell | Fix |
| --- | --- |
| Says what failed, not why | Add the cause when it's knowable (error anatomy, job 1) |
| No word on what's safe | Add the reassurance line (error anatomy, job 2) |
| Recovery action that loses work without saying so | Say what the action keeps and loses before they click |
| Two causes joined by "or" when the system knows which | One message per state |
| Passive voice hiding who acted ("Changes were made") | Name the actor or the object ("This schedule was updated") |
| One concept, several words across states (changes/edits, page/schedule) | Use the term the UI already shows, everywhere |
| Generic for no reason, blame, jargon, cutesy | `references/error-messages.md` |
| Helper text that repeats the label or title | Delete it |
| Generic label ("OK", "Submit") | Verb + object |

### Step 4: Find the lever before touching the words

Some problems are behaviour, not wording, and no rewrite fixes them. Check:

- A blocking state shown as a transient toast → keep it on screen until they act.
- Info styling on a state where work is at risk → warning styling.
- One message covering states the code can tell apart → split the states.
- The person can keep acting after a blocking state → block the action.
- A genuinely unknown cause → ask eng to map the failure mode.

Recommend these alongside the copy, never instead of it.

### Step 5: Write

Apply the floor and the four passes above, with the reference for the surface
(load table) and the tone row for the reader's state (`references/tone.md`).
For anything load-bearing (error headlines, buttons, empty-state CTAs) draft
2-3 options and pick one.

### Step 6: Check

1. Put the final strings one per line in a temp file and run
   `scripts/check-ux-copy.sh <file>` (set `UX_COPY_KILL_LIST` if the product
   overlay names a brand kill-list checker). Fix every hard hit; keep a review hit
   only with a reason.
2. Every behaviour claim has a receipt or sits in Check with eng.
3. Every recovery action says what it keeps and what it loses.
4. Terms match across every state in the set, and match the UI.
5. Each string fits its length target (`references/mechanics-and-benchmarks.md`).

### Step 7: Deliver

**Write:** for each string, the surface and state, the string, a one-line
reason where it isn't obvious, and 2-3 alternatives for load-bearing strings.
Then Check with eng.

**Review:**
1. The answer to the asker's question first ("Is it clear why they need to
   refresh?": yes / partly / no, per string).
2. Per string: current → what's not landing (named smells) → suggested.
3. Lever recommendations, if any.
4. Check with eng.
5. When the review came from a thread, a short paste-ready reply. Don't post it.

**Audit:** findings by severity with the fix inline, then a terminology table
(concept → term used where → recommended term).

**Done when:** every string passes the checker or carries a stated exception,
every behaviour claim has a receipt or a Check with eng question, and the
asker's actual question has a direct answer.

## Scope boundary

This skill owns text **inside the product**. Marketing pages, ads, campaign
emails, changelogs, and announcements are marketing copy - a different
discipline with different rules. If the task is marketing copy and a dedicated
skill exists (e.g. a brand voice skill), hand over to it; where both apply
(e.g. an in-app upgrade prompt), this skill owns clarity and the brand voice
skill owns vocabulary.

## Maintaining this skill

**Where a new rule goes.** If a pattern can catch it (a word, a phrase, a
punctuation mark), add it to `scripts/check-ux-copy.sh`; product-specific
words go in the product's own kill list. Prose here is for judgement calls. A
new error or state pattern goes in `references/error-messages.md`; a new
smell goes in the Step 3 table.
