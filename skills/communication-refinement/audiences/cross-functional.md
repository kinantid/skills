# Audience: Cross-Functional Lead

**Strictness**: strict (but warmer than CEO)

## Who this is for

Leads from other functions at your company: eng lead, design lead, GTM / sales lead, CS lead, CFO, operations lead. Peers of each other and of you in org terms, but each operates in a different lane with different priors and pressures.

## Their reading context

- Busy, but less ruthlessly compressed than the CEO.
- Hold strong views from their function's perspective.
- Will push back on your proposal through their function's lens (eng lead on complexity, CFO on cost, CS lead on support load).
- Want to see you've thought about their concerns, not just your own.
- Trust and relationship matter: you work with them repeatedly, not transactionally.

## Default principles to apply (in order)

1. **MOO**: the single most important principle here. Each function has predictable objections; address theirs specifically.
2. **Strategy not self-expression**: you're building alignment, not venting. Know what you want from them.
3. **Right amount of context**: more than CEO (they pressure-test from their lane), less than a teammate.
4. **QBQ**: if they asked you something, decode the real question (often their function's real concern).
5. **Finesse**: framing a tradeoff, a cost, or an ask that touches their turf — same facts, honest positive frame. State the constraint (eng cost, support load, timeline) once as something scoped and handled, not as a warning. See `principles/finesse.md`.
6. **Enthusiastic yes**: you need them to say yes in a way that makes them actively push, not passively agree.
7. **Managing across**: like managing up, but lateral. Make their job easier.

## What they want to see

- Clear statement of what you want from them.
- Recognition of their function's concerns and how you're handling them.
- Your reasoning, at enough depth that they can pressure-test.
- A specific ask (sign-off, resource commitment, buy-in, alignment).
- Acknowledgement of tradeoffs (not just upside).

## What they don't want to see

- Assumptions about their function's capacity or priorities without checking.
- Over-simplification of their domain.
- "Throwing over the wall": handing off without thinking about downstream impact on them.
- Pretending tradeoffs don't exist.
- Consensus-by-committee language ("I think we should all agree that…").

## Predictable objections by function

| Function | Their MOO pattern |
|---|---|
| **Eng lead** | "How much will this actually cost in eng time, complexity, and debt?" |
| **Design lead** | "Does this respect the design system / user research we've done?" |
| **GTM / Sales** | "How does this affect pipeline, deal size, and what I have to sell?" |
| **CS lead** | "Who's going to support this? What's the ticket load?" |
| **CFO** | "What's the revenue impact, the cost, the margin, and when do we see payback?" |
| **Ops / PMO** | "How does this fit with everything else planned? What moves?" |

Address the relevant function's MOO explicitly. *"[GTM lead], recommending we build X. Eng impact: 4 weeks with [eng lead]'s team, no new infra. Happy to walk through the scoping."* You've pre-empted the "how much eng?" question.

## Structural template

```
[What you want from them + headline context: 1–2 sentences]

[Their function's primary concern + how you're handling it: 1–2 sentences]

[Supporting detail they'd want: optional, 1 paragraph or a link]

[Specific ask + by-when]
```

## Slack example (to eng lead)

> [eng lead], want to add event instrumentation on the new onboarding flow. Scope is small: 4 events, piggybacking on our existing Amplitude setup.
>
> I've drafted the event spec (linked). Should be a ~1 day lift. Want to include it in next sprint?

Applies: MOO ("how much eng time?" → "~1 day"), specific ask ("include it in next sprint"), minimum context with detail linked.

## Email example (to GTM lead)

**Subject**: Pricing change: need your read by Thursday

> Quick one: proposing a move from flat pricing to tiered for mid-market. Expected: $200k/yr upside, minimal risk to existing customers (grandfathered).
>
> What I need from you: a sanity check on whether this helps or hurts your Q3 deals in flight. I've mapped the 10 biggest opps and don't see conflicts, but you know the sales context better.
>
> Memo with full detail below. Quick call Thursday if easier?

Applies: QBQ (the real question is "does this break your pipeline?"), MOO (addressed the "what about existing customers" concern with grandfathering), specific ask and deadline.

## Strictness calibration

**Apply strictly:**
- BLUF (less aggressive than CEO, but still first-thing)
- MOO: critical here
- Specific ask and deadline

**Apply moderately:**
- Concision: leaner than peer, fuller than CEO
- Context: enough for them to pressure-test

**Apply lightly:**
- Strict formatting: a Slack message can be flowing; an email benefits from structure

## The relationship layer

Cross-functional relationships are long-running. Unlike the CEO (where efficiency dominates), cross-functional comms benefit from low-grade investment in the relationship:

- Acknowledging their constraint ("I know eng is packed, so this is a small ask")
- Giving them optionality ("happy to defer if this isn't the right time")
- Explicit appreciation when they help ("thanks [eng lead], this unblocked the whole thing")

These are cheap and compound. Don't skip them.

## What to push back on (when refining drafts)

- Treating a cross-functional lead like a CEO (too terse) → add one layer of warmth
- Treating a cross-functional lead like a peer (too casual) → tighten the ask
- Ignoring their function's MOO → insist on addressing it
- Generic "let me know what you think" closes → replace with specific ask

## Common PM failure mode

Treating cross-functional leads as obstacles to route around. They're not; they're the people whose function makes or breaks your work. Good cross-functional comms treat them as co-owners. Bad comms treat them as gatekeepers. The difference shows up in the voice.
