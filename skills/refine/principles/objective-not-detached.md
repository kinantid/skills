# Be objective, not detached

**Source**: Wes Kao, "Be objective, not detached" + "Stop apologizing for reasonable business decisions"

## The core idea

When delivering bad news, "just the facts" isn't neutral. A bare factual account with no severity signal forces the reader to work out how worried to be, and often reads as evasive, like you're minimising or hiding something. The opposite failure, grovelling, drowns the facts in apology and makes the reader manage *your* feelings on top of the problem.

The target is the middle: **state the facts, signal how big a deal it is, show it's handled.** Objectivity plus ownership, minus theatre.

## The spectrum

```
Too detached ────────────── objective + owned ────────────── too apologetic
"An issue occurred           "We lost half of last            "I'm so sorry, this is
and was resolved.            week's batch to a config          all my fault, I feel
Some units were              error — annoying and my           terrible, I should have
affected."                   miss. Caught it within a          caught it. I completely
                             day, fixed, and there's now       understand if you've
                             a check that makes a repeat       lost confidence in me…"
                             impossible."
```

The middle version does three things the ends don't: quantifies the damage plainly, calibrates severity honestly ("annoying", not "catastrophic", not silence), and moves immediately to containment and prevention.

## How to apply it

1. **Lead with the fact and its size.** Numbers beat adjectives: "affects 3 customers, all notified" tells the reader more than "a small issue".
2. **Add one severity signal.** A single honest phrase that says how bad this is: "this one stings", "annoying but contained", "this is serious and I want it on your radar". This is the line detached drafts are missing.
3. **Own without grovelling.** One clean ownership statement ("my miss", "we got this wrong") does more than three apologies. Then stop apologising and start fixing.
4. **Close on containment.** What's done, what's next, what prevents recurrence.

## Stop apologising for reasonable business decisions

A special case of grovelling: apologising when nothing went wrong. A defensible decision the recipient won't love (reducing contractor hours, sunsetting a feature, declining a discount) is not a mistake, and apologising for it cedes the moral high ground, invites relitigating, and teaches people your decisions are up for emotional appeal.

- 🚫 "I'm so sorry, unfortunately we've had to make the difficult decision to reduce your hours next quarter. I feel awful about this."
- ✅ "Update on next quarter: we're projecting fewer contractor hours, so your allocation is coming down from X to Y. Sharing now so you can plan. Happy to talk through the reasoning."

Reserve apologies for actual mistakes. For reasonable decisions, share the reasoning plainly and let the recipient have an accurate-sized reaction, not one inflated by your guilt.

## Before / after (incident update to the CEO)

**Before (too detached):**
> FYI, there was a sync outage this morning affecting some customers. The team has deployed a fix and things are back to normal.

**After:**
> Sync was down 90 minutes this morning; 12 customers hit it, 3 badly enough to notice before we did. Not great — this is our second sync incident this quarter. Fix is live, all 12 have been contacted, and eng is adding an alert that catches this class of failure in under 5 minutes. Post-mortem Thursday; I'll send the write-up.

The second version is *more* objective (real numbers, real scope), and also more owned: the severity signal ("not great, second this quarter") tells the CEO you see the pattern, which is exactly what the detached version leaves them wondering about.

## Common failure mode

Using objectivity as armour. Passive voice ("mistakes were made", "an issue occurred"), agentless sentences, and pre-emptive minimisation ("small issue", "minor blip") all read as distancing, and readers smell it instantly. If you find passive voice in a bad-news draft, that's the tell: name the actor, size the damage, own the fix.

## Pairs with

This is the upward-comms companion to finesse (`principles/finesse.md`): finesse frames good-or-neutral facts for confidence; objective-not-detached delivers genuinely bad facts with calibrated ownership. The common failure direction is rarely grovelling: it's the composed, slightly-too-clean incident summary that under-signals severity. Add the one honest severity line before sending.
