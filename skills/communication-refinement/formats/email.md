# Format: Email / Written Update / Memo / Notion Doc

## Why email (and long-form written updates) are different

Email and its cousins (memos, Notion docs, written status updates) are where thinking gets preserved. Unlike Slack, these:

- Get forwarded, quoted, and referenced later.
- Sit in people's inboxes as unresolved tasks.
- Can be skimmed now and read later.
- Carry more weight: the formality signals the topic matters.
- Reward structure. A good subject line + clear sections = 3x read rate.

Emails to execs and customers especially get re-read. Write with that in mind.

## The subject line

Subject lines are the first MOO and the first BLUF. Bad subject = unread email.

**Rules:**

- Front-load the topic, not the relationship.
- If there's an action required, say so.
- Avoid vague subjects ("Update", "Touching base", "Hi!").
- Under 70 characters, ideally under 50.

| Bad | Good |
|---|---|
| Update | Q2 onboarding update: on track, 1 decision needed |
| Touching base | Following up on the pricing memo: OK to ship? |
| Hi! | Billing migration: scoping complete, need sign-off by Thursday |
| Quick question | Q: can we move the launch to June 3? |

If an email has a deadline, put it in the subject. *"Sign-off needed by Fri"* makes it much more likely to be actioned.

## Structural templates

### Template 1: Decision / Recommendation memo

```
Subject: [Topic]: [recommendation or ask]

[TL;DR: one sentence]

[Context: 2–4 sentences OR a section, tightly bounded]

[Recommendation + reasoning: the bulk of the memo]

[Risks / MOO: named and addressed]

[Ask + deadline]
```

### Template 2: Status update

```
Subject: [Project]: [status] ([deadline if relevant])

[Headline: one sentence: on track / at risk / blocked]

[Hero number or key fact]

[What shipped this period / Progress]
[What's next]
[Risks / blockers: if any]

[Ask: if any. If none: "no action required"]
```

### Template 3: Ask for sign-off / resource

```
Subject: [Ask + deadline]

[The ask: one sentence]

[Why it matters: 2–3 sentences]

[What I've already done: 2–3 sentences, to demonstrate readiness]

[MOO: address the one objection they'll have]

[Specific action + timing]
```

### Template 4: Customer email (renewal, check-in, upsell)

```
Subject: [Specific, customer-centric]

[Specific callback to their world: what they asked for, what they're working on, their renewal date]

[What's relevant for them now]

[Concrete next step: two options, ideally, one easier than the other]
```

## Structural tactics

### 1. Lead with a one-sentence TL;DR
If the recipient reads nothing else, the TL;DR carries the meaning.

### 2. Use section headers for anything over ~150 words
Headers = skimmability. "Context", "Recommendation", "Risks", "Ask" is a solid default.

### 3. Bold the ask
Busy readers scan for "what do they want from me?" Make it easy.

### 4. Put the ask in both the subject and the body
Redundancy is fine when clarity is the goal.

### 5. Use bullets when the content is enumerable, prose when the content is argumentative
Lists of items → bullets. An argument building to a conclusion → prose.

### 6. Signature off simply
"Thanks, [your name]" is enough. Skip elaborate sign-offs.

### 7. Length is content-dependent, but bias short
A 200-word email that lands is worth more than a 800-word one that gets half-read. Err short.

## Emails by audience

| Audience | Email defaults |
|---|---|
| **CEO / exec** | TL;DR mandatory. Max 300 words, usually fewer. Section headers if over 150. One ask. MOO addressed. Deadline in subject. |
| **Cross-functional lead** | TL;DR preferred. 150–500 words OK. Address their function's MOO. Make the ask specific and narrow. |
| **Peer / teammate** | Rarely email; usually Slack or doc. When email, casual, direct. |
| **Customer** | Specific to their context. TL;DR not a formal section, but the first sentence should do that work. Two next-step options. |

## Emails by purpose

### Sign-off emails

The worst thing you can do: send an email that ends *"let me know what you think."* The recipient has no idea what to do.

Better: specify the default.
- *"Sign-off by Thursday? Will proceed unless I hear otherwise."*
- *"Reply 'approve' and I'll run with this."*

### Status updates

Two sins:
- **Over-reporting effort** ("spent a lot of time on…"): nobody cares
- **Under-reporting outcomes**: if you shipped something good, say so clearly (yellow-spot-into-sun)

Structure: *what happened → what it means → what's next*. Always.

### Decision memos

A decision memo exists to get a decision. It should contain:
- The decision needed
- The options (if multiple)
- Your recommendation
- The reasoning
- The risks and how you're managing them
- The ask + deadline

Not more. Especially not: extensive appendices, journey-of-the-analysis narratives, or hedged "here are some thoughts" ambiguity.

### Difficult-news emails (delays, pivots, failures)

- Lead with the news. Don't bury.
- Be specific about what changed and why.
- State what you're doing about it.
- Name what you need from them (if anything).
- Don't over-apologise. One acknowledgement is enough.

Example:
> Dana, pushing the launch 2 weeks to 10 June. Root cause: integration bug we found in staging yesterday. Eng is on it; fix ETA next Wednesday with QA after.
>
> I know this impacts the sales enablement timing. I've talked to Mel and we've got a pre-launch version to use for enablement in the meantime.
>
> Updating the roadmap doc today. Flag anything you'd like me to handle differently.

## Before / after

### Status update email (before)

**Subject**: Update on Q2 onboarding work

> Hi all, hope everyone's doing well! I wanted to share a quick update on where things are landing for the Q2 onboarding revamp. As you might recall, we kicked this off back in March with the goal of improving activation. Since then we've been working on a few different experiments and iterations. The team has been great to work with and we've made good progress. I'll share some of the specific numbers and next steps below.
>
> [continues for 600 more words without clear structure]

### After

**Subject**: Q2 onboarding: on track, activation +34% in prototype

> **TL;DR**: On track to ship 3 May. Prototype shows activation at 38% vs. 28% baseline (best we've seen). One decision needed.
>
> **Progress**: Checklist flow built and in staging. User testing this week (6 participants, 3 already complete and positive).
>
> **Decision needed**: whether to ship full flow or split into two phases. I recommend full: breakdown in section below.
>
> **Risks**: 1-week eng slip possible if QA finds issues; no other blockers.
>
> **Ask**: Sign-off on full-flow approach by Friday. Default to full if no response.
>
> Thanks,
> [your name]

## Anti-patterns

- **"Circling back" / "Per my last email"**: passive-aggressive; just repeat the ask.
- **Nested ask**: burying the ask inside a paragraph.
- **Ambiguous close**: *"Let me know your thoughts"* with no default.
- **Over-structured email for a 30-word message**: a one-line email is fine; don't force headers.
- **Subject mismatch**: subject says "update" but the body is a decision ask. Fix the subject.
- **Reply-all to decline**: don't broadcast your "no"; DM or reply to sender only.

## Notion docs and written updates (similar, but different)

Notion docs / written updates behave like emails but with:

- More structural freedom (toggles, databases, tables).
- Async-first: written for people who'll read when they get to it.
- Often live-document: will be updated over time.

For Notion specifically:

- Use a clear H1 that matches the email-subject rule.
- TL;DR at the top, always.
- Use toggles for "full context" sections so the skim-first path is clean.
- Dates in headers when the doc will evolve.
- One document = one decision or one project; don't multiplex topics.

## The before-send checklist (for anything email-shaped)

- [ ] Does the subject line carry the topic + action needed?
- [ ] Does the first sentence state the TL;DR or ask?
- [ ] Can I cut 20% of the words?
- [ ] Is the MOO addressed?
- [ ] Is the ask specific, and does it have a deadline or default?
- [ ] If a skeptical reader skim-read this, would they get the point?
- [ ] Does it sound like me, not a template?
