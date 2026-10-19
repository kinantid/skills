# Error messages

**Source**: The anatomy and bad-error taxonomy restate Jenni Nadler's "When life
gives you lemons, write better error messages" (Wix UX, 2022). The error-type
patterns adapt content-designer/ux-writing-skill (MIT). Ideas theirs, wording
ours - see CREDITS.md.

Errors are the highest-stakes strings in the product: the reader is already
blocked, possibly losing work, and reading under stress. Write them last-first:
if you only polish one category of copy, polish these.

## The anatomy of a good error (Nadler/Wix)

A complete error message does five jobs. Short surfaces can drop the lower
ones, never the first:

1. **Say what happened, and why.** Name what did or didn't happen, plainly.
   If the cause is yours, own it: "due to an issue on our end" beats a shrug.
2. **Provide reassurance.** Say what was *not* affected: "Your changes were
   saved, but the email wasn't sent." This is the most-skipped and
   most-valuable line.
3. **Be empathetic, not cutesy.** When stakes are high, "Oops!" reads like a
   surgeon saying it mid-operation. Reserve "please" for genuinely dire or
   unfixable moments; skip the jokes entirely.
4. **Help them fix it.** The exact next action. Short on space? A descriptive
   link: "How do I fix this?", never "Learn more".
5. **Always give a way out.** If they can't fix it, or it may recur, give a
   path to support.

Worked shape: `Unable to connect your account` / `Your changes were saved, but
we couldn't connect your account due to an issue on our end. Try connecting
again. If it keeps happening, contact support.`

## What makes an error bad (the four smells)

- **Inappropriate tone** - playful while the person's work or money is on the
  line.
- **Technical jargon** - "couldn't fetch data", "credentials denied", error
  codes with no translation.
- **Passing the blame** - onto the person ("invalid input") or onto a third
  party ("X isn't responding"). Own it: "We're having trouble connecting to X."
- **Generic for no reason** - "Something went wrong" when the cause is
  knowable. If you know, say it. Its cousin: two causes joined by "or" when
  the code knows which one happened.

**Generic and unclear are different failures.** "Something went wrong and this
action could not be completed" tells the reader nothing; "Make sure you allow
the requested permissions and try again" tries to explain and still confuses.
Both fail review; fixing the first by producing the second is not a fix.

## Challenge the generic (errors are a team sport)

When asked for "just a generic error message here", push back with two
questions before writing: **why is the person seeing this?** and **what is
happening in the background?** Most generic errors are an unmapped failure
mode, not a copy problem - the string is written by whoever understands the
trigger. If the codebase is available, read the throw site before writing the
message. Ship a generic fallback only for the genuinely unknowable, and flag it
for review once real failure data exists.

## Error types and patterns

**Validation (inline, beside/below the field, real-time or on blur)**
Pattern: `[Field or input] [specific requirement]`
- "Email must include @"
- "Password must be at least 8 characters"
- "Choose a date in the future"

**System (toast or banner, immediately after failure)**
Pattern: `[What failed]. [Likely cause if knowable]. [Recovery step].`
- "Couldn't save changes. Connection lost. Reconnect and try again."
- "Upload failed. File is over 10 MB. Choose a smaller file."
- "Payment failed. Your card was declined. Try a different payment method."

**Blocking (full screen or large modal, prevents continued use)**
Pattern: `[What's blocked]. [Why]. [Specific action needed].`
- "Update required. This version is no longer supported. Update now to
  continue."
- "Verification needed. Confirm your email to keep going. Check your inbox."

**Permission (in context of the feature, benefit first)**
Pattern: `[Benefit]. [Permission ask].`
- "Get notified when orders ship. Enable notifications."
- "Find nearby sites. Allow location access."

**Access denied (modal or page)**
Pattern: `[What they can't do]. [Who can help].`
- "You don't have permission to edit this template. Ask your admin to grant
  access."

## Recovery actions that lose work

When the fix is an action that throws something away (refresh, reload,
discard, start over), the message says what the action keeps and what it
loses before the person clicks. Give them a chance to save what they'd lose:
"Refreshing clears the highlighted edits, so note them first." Only state
what's kept once the code confirms it.

## Stale data and concurrent edits

The open view has fallen behind changes made elsewhere: another person
published, another tab saved, or the edit session ended. Write one message
per state the code can tell apart, and match severity to what's at risk.

| State | At risk | Surface | Pattern |
| --- | --- | --- | --- |
| Viewing, newer version exists | Nothing | Info banner | `[Object] was updated since you opened it. [Refresh to see the latest].` |
| Editing, someone else published | Unsaved edits | Warning banner; block further edits | `[Who] published changes to this [object] while you were editing. [Refresh to keep editing]. [What refresh clears].` |
| Editing, session ended | Unsaved edits | Warning banner; block further edits | `Your editing session ended [reason if known]. [Refresh to keep editing]. [What refresh clears].` |
| Autosave rejected | The edits since the last save | Persistent alert, not a toast | `Your latest edits weren't saved. [Why]. [What's safe]. [What refresh clears].` |

- Name the object ("this schedule"), not the container ("this page").
- Name the actor when known ("Sam Lee published changes"); avoid "changes
  were made".
- Don't explain the mechanism ("session timed out", "version conflict").
  Say what it means for their work.

## Length and mechanics

- Target 12-18 words including the fix; a headline + one body line on larger
  surfaces.
- Full stop on complete-sentence errors; none on single-line inline hints that
  read as labels.
- Never: raw error codes without translation, "An error has occurred",
  "Something went wrong" with a knowable cause, dead ends with no next step.
