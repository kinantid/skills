# Audience: Customers & Marketing Readers

**Strictness**: strict (external-facing is always high-stakes)

## Who this is for

Anyone outside your company: customers (existing and prospective), marketing readers, journalists, partners, investors reading public comms. Anything that could be forwarded, screenshotted, quoted, or sit on the public internet.

## Their reading context

- **Customers**: busy, skeptical, often reading on mobile, evaluating whether your product is worth their ongoing investment of time and money.
- **Prospects**: evaluating alternatives, scanning for differentiators, skeptical by default.
- **Marketing readers** (blog, LinkedIn, emails): scrolling. You have ~3 seconds to earn the click or the continued attention.
- **All**: will not ask follow-up questions. If the message doesn't land, they move on.

## Default principles to apply (in order)

1. **Strategy not self-expression**: every sentence must earn attention. External readers owe you nothing.
2. **Yellow-spot-into-sun**: specific, concrete, proof-led. Lead with the proof, not the promise.
3. **Finesse**: same facts, honest positive frame. A customer question about limits, capability, or pricing is where the bare fact (or the hedged fact) leaks trust. Lead with the capability, state any constraint once as something handled. See `principles/finesse.md`.
4. **MOO**: anticipate the objection. External readers have all the objections of a cross-functional lead, without the relationship buffer.
5. **Concision**: ruthless. No corporate filler.
6. **Enthusiastic yes**: the "yes" is opening, buying, renewing, clicking, replying.
7. **Speak in the affirmative**: externally, "can't / don't support / not until" language is trust leakage. State what the product CAN do and when; pair with finesse on limits questions. See `principles/speak-in-the-affirmative.md`.
8. **Objective, not detached** (incidents and apologies): when something actually broke, customers get real numbers, one honest severity line, and the fix — not "we take this very seriously" boilerplate. See `principles/objective-not-detached.md`.
9. **Right amount of context**: minimum. Proof → promise → action. When pairing a limitation with a capability, close on the capability (invert the but, `principles/invert-the-but.md`).

## Status and capability claims need the system of record

A customer email about what the product does, or where a fix stands, is a commitment. Before finessing it, check each claim against the source of truth: the ticket or CS inventory for status, and the code, the card or the vendor's own docs for capability. Sales calls, demos, summaries and internal chat state intentions. Customers who cross-check (CFOs, implementation consultants) will find the gap. This has come up twice: a support status reply where the ticket held the real release status, and an integration reply where the demo's promised scope was wider than the code. See the receipts section in `principles/accurate-confidence.md`.

## Status updates to existing customers (open-item lists, escalation replies)

A list of open items is a set of promises, so the label on each item has to say how big the promise is. Customers read "next in line" and "under review" as "this week", and read "logged" as "filed and forgotten". Use one fixed set of labels, each mapped to the ticket's real state:

| Label | Promise | Ticket state |
|---|---|---|
| **Live** | You can use it today | Done, in a production deploy (merged isn't enough), and confirmed by a person in the customer's own account |
| **Coming [timeframe]** | Built and finishing, with an engineer's estimate | In review or in progress |
| **Planned** | Committed; we'll let you know when it's scheduled | Accepted into the queue |
| **On our list, not scheduled yet** | Captured with their examples, not committed | Triage, needs input, backlog |
| **In design** | Being shaped now; their input wanted | Only when it's true |

- **Put a one-line legend above the list**, written so it works word for word for any customer: "Live means you can use it now. Planned means it's on our roadmap, and we'll let you know when it's scheduled. On our list, not scheduled yet means we've captured it with your examples. Items move up as more customers ask for them, so if one is holding up your work, tell support and we'll factor it in."
- **Make it scale.** Point the customer to a channel that already exists (support). Don't promise a per-customer ranking call or a fixed update cadence ("every Friday"). Keep one-off prioritisation sessions for high-touch accounts, and put them in the meeting invite rather than in the standard wording.
- **Loosen engineer estimates by one step.** "Likely tomorrow morning" becomes "this week". If it ships early you've delivered early, and if it slips a day you've broken nothing.
- **Hold labels steady across the team.** Read what teammates have already told the customer, and don't move an item to a lower label without saying why. If you're building on a teammate's reply, name it ("following on from [teammate]'s note"). Two people giving the same customer different statuses reads as disorganised.
- **Every "On our list" item needs a ticket.** If you can't point to one, file it before sending, or say "noted for the team".
- **Lead with credit, then own the miss once.** Open with a specific count of what their feedback changed, plus one or two items they'll recognise. If we failed to tell them about fixes, own it in one sentence that leads into the fix: "You should have heard about each one as it landed, so this email brings them together in one place."

## What they want to see

- A concrete proof point or value prop in the first line.
- Language that sounds like a human, not a brand document.
- A specific promise ("cut X time by Y%") over a vague one ("save time").
- Social proof when available (real customer names, real numbers).
- A clear next step (reply, click, book, try).

## What they don't want to see

- Corporate boilerplate ("We're excited to announce…")
- Jargon ("synergies", "leverage", "best-in-class")
- Puffery without proof ("industry-leading", "world-class")
- Generic benefits ("save time", "increase productivity") without specifics
- Long paragraphs of setup
- Hedging / fine print before the promise
- Demands disguised as invitations ("Sign up now to unlock…" in a pushy register)

## Voice defaults

Your product is a B2B SaaS product. Customer comms should:

- Match your company's established voice, spelling, and locale
- Sound **domain-literate** (talk to the practitioners and buyers your product serves, not to techies)
- Sound **direct, not salesy**: your buyers are practitioners with finely-tuned BS detectors
- Avoid hype ("game-changing!") which reads as pushy
- Prefer concrete over abstract: "saved 11 hours/week on admin tracking" beats "drove efficiency gains"

## Structural template (customer-facing copy)

```
[Proof point or specific promise: first sentence]

[Who it's for: specific audience]

[How it works: one line]

[Next step: one clear action]
```

## Examples

### Customer email (renewal nudge)

**Before (self-expression / corporate):**
> Hi [customer], hope you're having a great week! I wanted to reach out because your [product] subscription is coming up for renewal and I wanted to share some of the exciting new features we've been working on. We've been listening to customer feedback and are thrilled to announce a number of improvements. I'd love to jump on a call to discuss!

**After (strategy / concrete):**
> [customer], your [product] renewal is 12 May.
>
> Since you signed up, we've shipped the reporting dashboard you asked for (live 2 weeks ago) and the mobile upload (live last month). Would be good to walk through them before renewal. 15 min this week?
>
> If everything's good and you want to renew as-is, reply "all good" and I'll handle it.

Applies: MOO ("is the new pricing going up?" → not addressed but no alarm raised; "will this be a sales pitch?" → addressed by offering a quick easy option), yellow-spot-into-sun (the features they asked for, named specifically), enthusiastic yes (two clear paths, one easier than the other).

### Marketing copy (landing page headline)

**Before:**
> [product] is the leading platform for teams like yours, helping you streamline your operations and improve efficiency.

**After:**
> [customer] cut project admin by 11 hours a week on [product].
>
> Software built for teams like yours: scheduling, reports, and documents, all in one place.
>
> [Book a demo] [Watch the 2-min tour]

Applies: yellow-spot-into-sun (lead with the concrete customer win), concision (every word earns its spot), two specific next steps at different commitment levels.

### Customer de-escalation email

**Before:**
> Hi [customer], so sorry for the inconvenience you've been experiencing. We completely understand how frustrating this must be. Please know we are taking this very seriously and our team is working hard to resolve it. We will keep you updated with any new information.

**After:**
> [customer], we pushed a fix for the sync issue 20 minutes ago. Your backlog should clear in the next hour.
>
> What went wrong: [one-line technical explanation]. What we're doing so it doesn't recur: [one line].
>
> If anything's still off at 3pm, ping me directly.

Applies: BLUF (the fix is first), MOO ("what actually went wrong" + "will this happen again"), specific (a time, a contact method, a next check-in).

### Answering a capability / limits question (finesse)

**Before (bare fact, reader supplies the worst frame):**
> We support around 500 concurrent users.

**Before (hedged into a warning):**
> We don't have hard limits, and most customers run fine. You might hit some performance issues at scale, but it's usually okay.

**After (same fact, honest positive frame):**
> The platform comfortably handles 500 concurrent users, well beyond your current size. As you grow it scales with you, and we flag ahead of any threshold so it's never a surprise.

Applies: finesse (lead with the capability, state the headroom, turn "what happens at scale" into a managed promise), negative-language audit (scrub "don't", "issues", "but", "usually"). Every clause stays true and defensible. That's the bar. See `principles/finesse.md`.

### Declining a customer (feature request, refund, partnership)

When the answer is no, the relationship still has to survive it. Be clear about the no, warm about the customer: carry the next step yourself ("I'll flag you the moment this ships") rather than pushing it onto them, keep any offer specific and bounded, and close on one genuine detail. See `principles/the-warm-no.md`.

## Strictness calibration

**Apply strictly (non-negotiable externally):**
- Concision
- Yellow-spot-into-sun: lead with proof
- Strategy not self-expression
- MOO: customers have objections you'd better address
- Clear next action
- Consistent voice / locale

**Watch for:**
- Legal / compliance language (review before sending anything claiming performance outcomes)
- Names mentioned: get customer consent before naming them in public copy
- Over-promising: *"saves 40% of your time"* is only OK if it's defensible

## What to push back on (when refining external comms)

- Corporate boilerplate openings → cut to the proof
- Vague benefits ("save time", "increase efficiency") → demand specifics
- Long setup before the value prop → move the proof up
- Hedging / disclaimers in the opening → move to a footer
- Tone that's too pushy / hype-y → dial back to direct
- Feature dumps → reframe as outcomes
- Missing or weak next action → add a specific CTA
- Negative framing of a true fact (bare number, or hedges that plant doubt) → run the finesse negative-language audit; lead with the capability, state the constraint once as handled

## Common failure mode

Two opposites:

1. **Too corporate.** Writing to customers as if you're writing an annual report. Customers smell this instantly.
2. **Too casual without substance.** "Hey there!" openings with no value prop underneath. Sounds friendly; converts like nothing.

The sweet spot is **direct, specific, warm, professional**: talk to customers like a practitioner who respects their time and has actual evidence to back up any claim.
