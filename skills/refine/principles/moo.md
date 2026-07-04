# MOO: Most Obvious Objection

**Source**: Wes Kao, "Resolve the Most Obvious Objection" (Kao's framework, also covered in her interview on Lenny's Newsletter, "Become a better communicator")

## The core idea

Before you share an idea, spend a few seconds asking: *what's the most obvious objection a smart reader will have to this?* Then address that objection in the same breath as the idea, ideally before they can raise it.

Kao's line: *"If you don't say it, they are thinking it. And if they are thinking it, they aren't listening to you. By saying it out loud, you neutralize the objection and show you've done your homework."*

The technique is small but disproportionately high-leverage. Kao's framing on Lenny: a few seconds of MOO work *"dramatically improves your communication effectiveness"* because most failed pitches and updates die on an unaddressed objection the writer never bothered to surface.

## Why it matters

When you ignore an obvious objection, two things happen:

1. The reader gets stuck on it. They stop processing your point and start formulating their pushback. You've lost them.
2. You look like you haven't thought it through. Even if you have, naming the objection is how you prove it.

Addressing the MOO upfront does the opposite: it shows you've pressure-tested the idea, builds credibility, and keeps the reader moving forward instead of rehearsing their rebuttal.

## How to apply it

Before sharing a recommendation, ask, three times, in this order:

1. "What would a skeptic say the minute they finish reading this?"
2. "What's the sharpest version of that skeptic: the CEO / CFO / eng lead?"
3. "What's the strongest response I have to that?"

Then write the objection and your response into the body of the message. Don't hide it at the end.

## Where to put the MOO

- **Short message / Slack**: inline, right after the recommendation. *"Recommending X. Main risk: Y. Here's why I think we can manage it."*
- **Email / memo**: a named "Risks" or "What I'm worried about" section, with your answer. Name it explicitly; don't bury it.
- **Customer-facing**: address it as part of the value prop. *"You might be thinking [objection]. Here's why that's not a concern for [this case]."*

## Before / after

**Before (no MOO):**
> Recommending we switch from Stripe to Adyen for payments. It'll save us about 0.4% in fees at our volume and the API is cleaner.

**After (with MOO):**
> Recommending we switch from Stripe to Adyen for payments: saves ~0.4% in fees at our volume and cleans up the API.
>
> **The obvious concern**: migration risk. I've mapped it; it's a 4-week lift for eng, we can do it in parallel with existing Stripe traffic, and the rollback is one config flag. Not risk-free, but it's scoped.

The first version invites "but what about migration?" as the first response. The second version has already answered it.

## How to prioritise which objection

You'll often see 2-3 possible objections. Rank them by:

1. **Obviousness**: what's the first thing the reader will notice?
2. **Severity**: which one, if unaddressed, would kill the idea?
3. **The specific reader's priors**: a CFO will object to cost; an eng lead to complexity; a CEO to strategic risk.

Address the top 1-2. Beyond that, you're padding.

## Common failure mode

Naming an objection and then handwaving the response. *"Yes, there's migration risk, but we can handle it."* That's worse than not raising it: it signals you know the problem and don't have an answer. If you can't address it in one solid sentence, either the objection is unresolved (don't ship the pitch yet) or you need more space for that objection specifically.

## A note on customer/marketing copy

In customer-facing copy, the MOO is often about price, trust, switching cost, or "this won't work for me." Great marketing copy addresses these before the reader consciously forms them. *"Setting up takes 5 minutes, not 5 hours"* is a MOO response to the unspoken fear of long onboarding.
