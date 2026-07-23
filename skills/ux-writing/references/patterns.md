# Patterns by surface

**Source**: Adapts content-designer/ux-writing-skill (MIT), whose pattern
framework follows Torrey Podmajersky's *Strategic Writing for UX*. CTA formula
adapted from conversion-copywriting practice. Ideas theirs, wording ours - see
CREDITS.md.

Errors have their own file (`error-messages.md`). Everything else is here.

## Titles

Orient the person: where am I, what is this?

- Noun phrases, sentence case: "Account settings", "Your library"
- Task titles get the verb: "Create new post", "Choose a date range"
- 3-6 words, 40 characters max; must survive mobile wrapping
- The title states what the surface is; the description below it adds what to
  do - never make them say the same thing twice

## Buttons and links

Enable action; the label is a promise of what happens next.

- Pattern: `[Verb] [object]` - "Save changes", "Create template", "Download
  PDF"
- 2-4 words, 6 max
- Bare "Save" is fine where the object is unambiguous
- Links are descriptive out of context (screen readers navigate by link list):
  "Read our privacy policy", never "Click here"
- Verb precision is a system: "Delete" (permanent), "Remove" (unlink),
  "Archive" (hide-but-keep), "Cancel" (abandon this action) - one meaning per
  verb across the whole product

## CTAs (in-product prompts, upgrade nudges, setup flows)

Formula: `[Action verb] + [what they get]` - the label states the value, not
the mechanism.

- "Start free trial" beats "Sign up"
- "See pricing for my team" beats "Learn more"
- "Create your first template" beats "Get started"

One primary CTA per surface. If two actions compete, one of them is secondary -
style it (and word it) as the exit: "Not now", "Skip for now" (implies
returnable), "Maybe later".

## Forms

- **Labels**: visible noun phrases - "Email address", "Phone number".
  Placeholder-only fields fail accessibility and memory.
- **Placeholders**: sparingly, only for format examples ("name@example.com");
  they vanish on focus, so never put instructions in them.
- **Helper text**: explains *why* the input is needed or *what format* -
  verb-first, one line, full stop. If every field needs helper text, the form
  needs redesign, not more text.
- **Required/optional**: mark the minority case only.

## Empty states

Three kinds, three jobs. Say which kind you're writing before writing it:

- **First use**: teach + invite. `[What this is]. [How to start].` -
  "No templates yet" / "Create a template to save this format for later."
- **User cleared**: confirm + reassure. "All caught up."
- **No results**: redirect. "No results found" / "Try a different filter or
  search term."

Headline ≤5 words, body one sentence ≤20 words, then the CTA.

## Success messages

Confirm, proportionally. Past tense, specific, brief.

- Pattern: `[What happened][. What's true now, if useful]`
- "Changes saved", "Email sent", "Template published. Available to your team
  now."
- Routine action → two words. Milestone → one warm sentence. Never confetti
  language for a save button.

## Notifications

Earn the interruption: timely, valuable, and actionable, or not sent.

- Pattern: `[Verb-led title]` + `[one-line context]`
- Action-required: "Review needed" / "2 RFIs are waiting for your sign-off."
- Passive/informational: "Report sent" / "Sent to 3 recipients."
- Title 35-45 characters; title + body 10-15 words
- The title carries the news; the body carries the specifics - no overlap

## Confirmations (destructive or high-stakes actions)

- Pattern: `[Verb noun?]` headline + `[consequence]` body + verb-specific
  buttons
- "Delete template?" / "This removes the template for everyone using it." /
  buttons: "Delete template" + "Cancel"
- The confirm button repeats the verb - never "OK/Yes"
- State the consequence plainly, including irreversibility: "This can't be
  undone."
- No guilt trips on the cancel path ("No, I like wasting time" is manipulation,
  not copy)

## Onboarding and first-run

- Welcome without a wall of text: one idea per screen/step
- Focus each step on what the person can *do*, not on features
- Celebrate the first real win briefly, then get out of the way
- Every tour is skippable, and the skip is respectful: "Skip for now"
