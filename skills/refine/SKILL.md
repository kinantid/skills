---
name: refine
description: Draft, refine, critique, or coach written communication (Slack, email, memo, update, customer note, marketing copy) in the user's own voice, using Wes Kao's frameworks (BLUF, MOO, minimum viable backstory, finesse, managing up). Use when the user pastes a draft, asks to write a message for a specific reader, asks whether something lands, or shares the version they actually sent (retro). Not for slide decks.
---

# Refine: communication in your voice

Sharpens written communication for three format families (Slack/chat, email/written updates, customer/marketing copy) across four audiences (CEO, cross-functional leads, peers, customers). The strategy comes from Wes Kao's frameworks and the other sources in `CREDITS.md` at the repo root; the voice comes from the user's own writing.

## Personal layer: read first

Two optional, gitignored files make this skill the user's rather than generic. When they exist, read both before Step 1 on every run. They override every generic default in this file.

- `voice/VOICE.md`: how the user actually writes, distilled from real samples (tone, rhythm, openers, hedges, punctuation, verbatim snippets). Match it. If it's missing and the user wants output in their voice, offer to build one (`voice/BUILDING.md`) or ask for 3-6 real samples first; a rewrite guessed from adjectives reads generic.
- `context/CONTEXT.md`: who the user is and where they work (role, company, locale, people by role, house terms, extra formats). If it names linter flags (a locale like `--au`, or `--allow-spaced-hyphen` for someone who types " - " themselves), pass them in Step 6.

## Principles

Read only the 2-3 that matter for the piece, never all of them.

- **Minimum viable backstory** (start right before you get eaten by the bear) → `principles/minimum-viable-backstory.md`
- **Signposting** (reduce cognitive load) → `principles/signposting.md`
- **Answer the question behind the question** → `principles/qbq.md`
- **Most obvious objection (MOO)** → `principles/moo.md`
- **Sales, then logistics** → `principles/sales-then-logistics.md`
- **Accurate confidence** (incl. receipts before you credit) → `principles/accurate-confidence.md`
- **How to be concise** → `principles/how-to-be-concise.md`
- **Enthusiastic yes** → `principles/enthusiastic-yes.md`
- **The warm no** → `principles/the-warm-no.md`
- **Managing up** → `principles/managing-up.md`
- **Strategy not self-expression** → `principles/strategy-not-self-expression.md`
- **Presenting to your CEO** → `principles/present-to-ceo.md`
- **Right amount of context** → `principles/right-amount-of-context.md`
- **Turn a yellow spot into the sun** → `principles/yellow-spot-into-sun.md`
- **CEDAF delegation** → `principles/cedaf-delegation.md`
- **Finesse** (same facts, better framing) → `principles/finesse.md`
- **Speak in the affirmative** → `principles/speak-in-the-affirmative.md`
- **Invert the but** → `principles/invert-the-but.md`
- **Objective, not detached** (bad news with calibrated ownership) → `principles/objective-not-detached.md`

Audience playbooks live in `audiences/`, format templates in `formats/`, and any personal formats in `context/`.

## Workflow

### Step 1: Identify mode, audience, and format

If any of the three is unclear from context, ask about all the unclear ones in a single message.

1. **Mode**:
   - **Critique**: diagnose; leave the rewriting to the user.
   - **Refine**: rewrite, with a short note on what changed and why.
   - **Coach**: ask one or two sharp questions to settle the strategy, then draft.
   - **Retro**: the user shares what they actually sent (or edited) after a draft from this skill. Go to [Retro mode](#retro-mode-learn-from-what-was-sent).
   - **Default**: a pasted draft with no instruction gets **refine** plus a short critique. A "should I…" or "how do I…" question with no draft gets **coach**.

2. **Audience** → playbook and strictness:
   - CEO / exec / board → `audiences/ceo.md` (strict)
   - Cross-functional lead (eng, GTM, CFO, CS) → `audiences/cross-functional.md` (strict)
   - Product teammate / peer → `audiences/peers.md` (relaxed)
   - Customer / marketing reader → `audiences/customers-and-marketing.md` (strict: external is always high-stakes)

3. **Format**:
   - Slack / chat → `formats/slack.md`
   - Email / written update / memo / doc → `formats/email.md`
   - Customer-facing or marketing copy → `formats/customer-and-marketing.md`
   - Anything `context/CONTEXT.md` lists as a personal format → the file it points to

### Step 2: Load the right references

Read the personal layer (if present), the audience playbook, the format file, and the 2-3 principles that matter most:

- Pitching a decision, ask, or recommendation → MOO, enthusiastic-yes, strategy-not-self-expression, sales-then-logistics
- Status update or retro → MVB, signposting, yellow-spot-into-sun, right-amount-of-context, accurate-confidence
- Answering an exec question → question behind the question, concise, MVB, accurate-confidence
- Managing up to CEO or board → managing-up, present-to-ceo, MOO, sales-then-logistics
- Customer / marketing copy → strategy-not-self-expression, enthusiastic-yes, concise, yellow-spot-into-sun, finesse
- Customer status update or escalation reply (a list of open items) → accurate-confidence, objective-not-detached, yellow-spot-into-sun, speak-in-the-affirmative, plus the status-updates section of `audiences/customers-and-marketing.md` (fixed status labels and the standard legend)
- Delicate or loaded question (limits, pricing, "can you do X?") → finesse, qbq, strategy-not-self-expression
- Slack to a peer → concise, MVB (dialled down)
- Delegating, writing a brief or spec → cedaf-delegation, sales-then-logistics, MOO
- Forecasts, estimates, numbers → accurate-confidence, MOO
- Saying no while keeping the relationship (incl. feedback inside a rejection) → the-warm-no, accurate-confidence, strategy-not-self-expression
- Feedback, praise, shout-outs, recommendations → accurate-confidence, strategy-not-self-expression, yellow-spot-into-sun, invert-the-but, speak-in-the-affirmative
- Bad news, incidents, unpopular-but-reasonable decisions → objective-not-detached, finesse, MVB
- Instructions, availability, scheduling, boundaries → speak-in-the-affirmative, concise

### Step 3: Diagnose before rewriting

Even in refine mode, diagnose silently first so you know which principles the draft breaks. The recurring patterns:

- **Buried lede**: the main point sits in paragraph 3. → BLUF + signposting.
- **Too much backstory**: setup before the point. → MVB.
- **Answering the literal question**: the real question is underneath. → question behind the question.
- **Unanticipated objection**: the reader will push back within 10 seconds. → MOO.
- **Self-expression over strategy**: venting, processing, or being clever instead of moving the reader. → strategy-not-self-expression.
- **Vague ask or vague urgency**: no clear action, or "ASAP" with no date. → enthusiastic-yes (concrete deadline, sequence, or default).
- **Negative phrasing**: "don't do X", "I can't until Thursday". → speak-in-the-affirmative: state the target behaviour or the "can".
- **Good news cancelled by "but"**. → invert-the-but, when the positive is the honest headline.
- **Bad news too detached or too apologetic**. → objective-not-detached: facts, one honest severity line, containment.
- **Underselling a real win**. → yellow-spot-into-sun.
- **True facts framed as warnings** ("we don't have hard limits", "usually fine"). → finesse: lead with the capability, state the constraint once as handled.
- **Wrong amount of context**. → right-amount-of-context.
- **Performative praise or emotion labelling** ("we loved", "that's the kind of X we look for"). → state the concrete observation and stop; the specific is the praise.
- **Warmth that distorts the substance**: kind framing that quietly moves the bar. → be kind about the person, accurate about the bar.
- **Instructing what they already did**: advice to build a skill they just showed. → credit it and push to make it systematic.

### Step 4: Apply strictness

- **Strict** (CEO, cross-functional, customer, marketing): apply principles hard, rewrite freely, insist on BLUF, MOO, and an explicit ask.
- **Relaxed** (peer, casual Slack): cut obvious bloat and keep the warmth and voice. A casual Slack needs to be human more than it needs a BLUF.

Unsure? Up, across, or external → strict. A teammate you work with daily → relaxed.

### Step 5: Deliver

**Critique:**
```
What's working: [1-2 specific things]
What's not landing: [2-4 issues, each tied to a principle]
The real problem: [one sentence]
Suggested path: [one paragraph]
```

**Refine:**
```
Rewritten draft:
[the rewrite, formatted for the channel]

What changed and why:
- [change]: [principle, one line]
```

Keep "what changed" to 3-5 items. More than that means the draft needs a structural rethink; say so.

**Coach:**
```
Before I draft, two questions:
1. [the question behind the question: what does the reader need to decide or do?]
2. [the MOO or the ask: what objection worries you most / what single outcome do you want?]
```

Skip straight to the draft when the context already answers these.

### Step 6: Check before sending

1. **Run the linter** on the output (save the draft to a temp file, or pipe it): `scripts/lint.sh [flags from CONTEXT.md] draft.md`. It catches the mechanical tells deterministically: dashes, announced honesty, performative praise, filler hedges, unhyphenated compound durations ("30 minute chat"), the user's personal blocklist, and (with `--au`) US spellings. Fix every finding, or keep it deliberately when it's inside a quotation.
2. **Lead**: the first sentence carries the point or the ask (strict), or the second at the latest (relaxed).
3. **Objection**: a sceptical reader's first pushback is answered in the first paragraph.
4. **Concision**: every remaining sentence earns its place.
5. **Voice**: it reads like the samples in `voice/VOICE.md`: the user's sentence length, openers, and register for this audience.
6. **Ask**: the next action, owner, and date are clear.
7. **Receipts** (when crediting or characterising someone, quoting what someone said, or telling a customer what the product does): every specific claim traces to a source you can point to (a transcript for who said what; the code, the ticket or the vendor docs for product behaviour); soften or cut the rest.

Revise until all seven pass.

## Retro mode: learn from what was sent

This is how the skill learns the user's voice over time. Trigger: the user pastes what they actually sent, edits your draft before sending, or says "retro".

1. **Diff** your draft against the sent version. List each meaningful difference (ignore typo fixes).
2. **Classify** each difference:
   - **Mechanical** (a phrase they always cut, a punctuation habit): propose a line for `voice/blocklist.txt`, so the linter catches it from now on.
   - **Voice** (rhythm, opener, register, warmth level): propose an edit to `voice/VOICE.md`, quoting the sent text as the receipt.
   - **Strategy** (they reordered, cut a section, changed the ask): name the principle it maps to; propose a principle or audience edit only if the same correction has happened before.
   - **One-off** (situational fact you couldn't have known): note it and change nothing.
3. **Show the proposals** as a short list and apply the ones the user approves. VOICE.md is the user's description of themselves; every edit gets their sign-off.
4. **Log the pair**: append the situation (audience, format, goal), your draft, and the sent version to `voice/pairs.md`. These pairs are the seed for evaluating changes to this skill later.

## Voice defaults (when no VOICE.md exists)

`voice/VOICE.md` replaces this section entirely when present.

- **Tone**: direct, warm, dry. Plain words, recommendations stated as recommendations ("I recommend X because Y").
- **Register**: match the user's company voice, spelling, and locale.
- **Specifics over labels**: state the concrete observation once, back it, and stop. *"The strongest part was the cold-start reframe: you asked why and landed on recall versus recognition"* beats *"That's the kind of thinking we look for."*
- **Honesty is the default**, so it never needs announcing.
- **Punctuation**: commas, colons, full stops, and parentheses carry elaboration. A colon is the usual fix where a dash crept in.

The AI tell is redundancy and unearned warmth: the observation, then a feeling about it, then the category it belongs to, plus compliments with no receipt. A strong voice states the specific once, backs it, and stops.

An explicit tone request from the user ("warmer", "more formal") overrides all of this.

## Scope

- Apply the 2-3 principles that matter; over-applying dilutes the feedback.
- Preserve phrasing that's recognisably the user's. The principles are about clarity and strategy, not sameness.
- Decks, slides, and live-verbal scripts are out of scope; redirect.
- Grammar and typos only on request.
- Name the principle behind a fix in a few words; explain it fully only on request.

## Worked example

Draft: *"Hi [CEO], hope you're well! Just wanted to circle back on the pricing discussion from last week. I know we talked about a few different options and I've been thinking about it more and I think maybe we should consider going with the tiered approach, although there are some risks, so keen to hear your thoughts. Also wanted to flag that the eng team might push back on timelines. Let me know when you have 5 mins to chat!"*

Audience: CEO (strict). Format: Slack. Mode: refine. Principles: BLUF, MOO, concise, enthusiastic-yes.

> [CEO], recommending we go with the tiered pricing approach. Main risk is eng timeline pushback; I've scoped a 2-week delivery with [eng lead] and they're comfortable. Want to lock this in by Friday so we can brief sales next week. 5 mins today or tomorrow?

What changed and why:
- Lede first: BLUF / signposting
- Cut 6 hedges ("just", "I think maybe", "should consider", "keen to hear"): concise / managing up
- Eng pushback named and resolved in the same breath: MOO
- Clear ask with a deadline: enthusiastic yes

## File structure

```
refine/
├── SKILL.md
├── principles/          one file per principle, each opening with a **Source** line
├── audiences/           ceo, cross-functional, peers, customers-and-marketing
├── formats/             slack, email, customer-and-marketing
├── scripts/
│   ├── lint.sh          deterministic checks (run in Step 6)
│   ├── blocklist.txt    generic AI tells and hedges
│   └── check-principle-coverage.sh
├── voice/
│   ├── VOICE.template.md
│   ├── BUILDING.md      how to build VOICE.md from real samples
│   ├── VOICE.md         yours, gitignored
│   ├── blocklist.txt    yours, gitignored (personal linter additions)
│   └── pairs.md         yours, gitignored (retro log: draft vs sent)
└── context/
    ├── CONTEXT.template.md
    └── CONTEXT.md       yours, gitignored (role, company, locale, extra formats)
```

## Maintaining this skill

**Where a new rule goes.** If a pattern can catch it (a phrase, a punctuation mark, a spelling), it goes in a blocklist and the linter enforces it: `scripts/blocklist.txt` if it's a generic AI tell, `voice/blocklist.txt` if it's personal. Prose in this file is for judgement calls only.

**Adding a principle or a new reference** (another author whose thinking you want in the skill). Keep these in sync, or the new principle quietly never gets used:

1. **The file**: `principles/<stem>.md`, opening with a `**Source**:` line, restated in original wording.
2. **Credits**: add the author to `CREDITS.md` at the repo root, following its convention.
3. **The registry**: add it to the Principles list above, and to the Step 2 heuristics and Step 3 patterns where relevant.
4. **The audiences**: reference it (as `principles/<stem>.md`) in each audience playbook it changes.
5. **The description**: only if it's a new headline concept.

Then run `./scripts/check-principle-coverage.sh`. It flags principles missing from this file (fails the run) and principles no audience references (advisory; `--strict` fails on those too).
