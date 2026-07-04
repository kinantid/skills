---
name: refine
description: Refine, critique, and coach on written communication using Wes Kao's frameworks (MVB, signposting, QBQ, MOO, BLUF, concise, strategy-not-self-expression, yellow-spot, managing up, CEO presentation, right amount of context, enthusiastic yes, finesse). Use whenever the user asks to "review this draft", "make this sharper", "help me write a Slack to [CEO/leadership/team]", "draft an email to [customer/CFO/cross-functional lead]", "is this too long", "am I burying the lede", "how do I pitch this", "help me manage up", "critique my message", "make this land", "how should I frame this", or pastes in a draft of any Slack message, email, memo, update, customer-facing note, or marketing copy. Also triggers on "why isn't this landing", "am I being too wordy", "what objection am I missing", "does this make sense to a [CEO/exec/PM/customer]", or any written-communication feedback request. Do NOT use for slide decks or presentations (out of scope for this skill).
---

# Refine — communication refinement (Wes Kao frameworks)

This skill helps you sharpen written communication for three format families (Slack/chat, email/written updates, and customer/marketing copy) across four audiences: the CEO, cross-functional leads, product teammates, and external customers/marketing readers. It applies Wes Kao's communication frameworks, adapted for a product context at your company.

## When to use this skill

Trigger on any of:

- The user pastes a draft and asks for feedback, edits, or a rewrite.
- The user asks to draft something from scratch for a specific audience (CEO, cross-functional lead, teammate, customer).
- The user asks a meta-question about their communication ("am I being too vague?", "is this landing?", "what's the risk here?").

Do **not** use this skill for slide decks, pitch decks, or live verbal presentations. If the user needs those, say so and point them at a presentation-focused skill.

## What this skill actually does

It applies a small, opinionated set of Wes Kao principles, not all of them at once, and not mechanically. The goal is sharper communication, not a checklist. The principles live in `principles/` as reference files. Read the ones relevant to the task, not all of them.

Core principles (with reference files):

- **Minimum Viable Backstory (start right before you get eaten by the bear)** → `principles/minimum-viable-backstory.md`
- **Signposting (reduce cognitive load)** → `principles/signposting.md`
- **Question Behind the Question (QBQ)** → `principles/qbq.md`
- **Most Obvious Objection (MOO)** → `principles/moo.md`
- **Sales, then logistics** → `principles/sales-then-logistics.md`
- **Accurate confidence** → `principles/accurate-confidence.md`
- **How to be concise** → `principles/how-to-be-concise.md`
- **How to get an enthusiastic yes** → `principles/enthusiastic-yes.md`
- **The warm no (declining while keeping the relationship)** → `principles/the-warm-no.md`
- **Managing up (15 principles)** → `principles/managing-up.md`
- **Strategy not self-expression** → `principles/strategy-not-self-expression.md`
- **Presenting to your CEO (12 principles)** → `principles/present-to-ceo.md`
- **Right amount of context (10 principles)** → `principles/right-amount-of-context.md`
- **Turn a yellow spot into the sun** → `principles/yellow-spot-into-sun.md`
- **CEDAF delegation framework** → `principles/cedaf-delegation.md`
- **Finesse (same facts, better framing, in delicate situations)** → `principles/finesse.md`

Audience playbooks live in `audiences/`. Format templates live in `formats/`.

## Workflow

When the user brings something to this skill, follow this sequence. Don't skip steps, but don't belabor them either: the user wants the refined output, not a lecture.

### Step 1: Identify mode, audience, and format

Before touching the draft, figure out three things. If any one of them is unclear from context, ask. Ask them together, not one at a time, so the user doesn't have to ping-pong.

1. **Mode**: what does the user actually want?
   - **Critique**: "tell me what's wrong, I'll fix it." Return a structured diagnosis; don't rewrite.
   - **Refine**: "rewrite this." Return a rewritten draft, with a short note on what changed and why.
   - **Coach**: "help me think through this." Ask one or two sharp questions before drafting, so the strategy is clear before the words.
   - **Default**: if the user pastes a draft without specifying, do **refine** and attach a short critique. If the user asks a "should I…" or "how do I…" question without a draft, do **coach** first.

2. **Audience**: who is this for? Use the playbook:
   - CEO / exec / board → `audiences/ceo.md` (**strict** application)
   - Cross-functional lead (eng lead, GTM lead, CFO, CS lead) → `audiences/cross-functional.md` (**strict** application)
   - Product teammate / peer → `audiences/peers.md` (**relaxed** application)
   - Customer / marketing reader → `audiences/customers-and-marketing.md` (**strict** application: external-facing is always high-stakes)

3. **Format**: where does this land?
   - Slack / chat → `formats/slack.md`
   - Email / written update / memo / Notion doc → `formats/email.md`
   - Customer-facing copy or marketing copy → `formats/customer-and-marketing.md`

### Step 2: Load the right references

Based on mode + audience + format, read the audience playbook, the format template, and the 2–3 principles that matter most for this specific piece. Don't read every principle every time: that bloats context and dilutes the feedback.

Quick selection heuristics:

- Pitching a decision, ask, or recommendation → MOO, enthusiastic-yes, strategy-not-self-expression, sales-then-logistics
- Status update or retro → MVB, signposting, yellow-spot-into-sun, right-amount-of-context, accurate-confidence
- Answering an exec question → QBQ, concise, MVB, accurate-confidence
- Managing up to CEO or board → managing-up, present-to-ceo, MOO, sales-then-logistics
- Customer / marketing copy → strategy-not-self-expression, enthusiastic-yes, concise, yellow-spot-into-sun, finesse
- Answering a delicate / loaded question (limits, pricing, "can you do X?", anything where the bare fact could be misread) → finesse, qbq, strategy-not-self-expression
- Slack to a peer / teammate → concise, MVB (but dialed down)
- Delegating work / writing a brief or spec → cedaf-delegation, sales-then-logistics, MOO
- Forecasting, estimating, or stating numbers → accurate-confidence, MOO
- Declining, rejecting, or saying no while keeping the relationship → the-warm-no, accurate-confidence (receipts before you credit), strategy-not-self-expression
- Feedback, praise, shout-outs, recommendations → accurate-confidence (receipts before you credit), strategy-not-self-expression, yellow-spot-into-sun

### Step 3: Diagnose before rewriting

Even in refine mode, do a silent diagnosis first. The goal is to know which principles the draft is violating before touching the words. Look for these patterns (they come up constantly):

- **Buried lede** → the main point is in paragraph 3, not sentence 1. Fix with BLUF + signposting.
- **Too much backstory** → the writer starts with setup instead of the point. Fix with MVB.
- **Asking the literal question, not the real one** → the writer is answering what was asked, not what's actually being asked. Fix with QBQ.
- **No anticipation of objections** → reader will push back within 10 seconds of reading. Fix with MOO.
- **Self-expression not strategy** → the writer is venting, processing, or being clever instead of moving the reader. Fix with strategy-not-self-expression.
- **Vague ask** → no clear action, decision, or next step. Fix with enthusiastic-yes + concise.
- **Underselling** → a real win is stated flatly. Fix with yellow-spot-into-sun.
- **Negative framing of true facts** → the writer states accurate information in a way that plants doubt ("we don't have hard limits", "usually fine", "might hit some issues, but…"). The hedges transfer the writer's anxiety to the reader and a true, good answer reads as a warning. Fix with finesse: lead with the capability, state any constraint once as something handled, scrub doubt-words ("don't", "without", "issues", "but", "usually"). Still defensible, never spin.
- **Wrong amount of context** → either over-explains basics or assumes knowledge the reader doesn't have. Fix with right-amount-of-context.
- **Performative praise / emotion labelling** → the draft names a reaction ("stuck with us", "we loved", "genuinely impressive", "that's the kind of X we look for") instead of the concrete observation underneath it. Fix with strategy-not-self-expression (emotional signalling serves the writer, not the reader) + yellow-spot-into-sun (lead with the concrete proof, drop the label). The reader infers the value from the specific; they don't need to be told they did well.
- **Warmth that distorts the substance** → kind framing that quietly misrepresents the standard. "The visual judgement is already there, just point it at the code" reframed an engineering role as design-plus-a-bit: flattering, but it moved the goalposts. Fix with strategy-not-self-expression: be kind about the person, accurate about the bar. Warmth shouldn't change what's true.
- **Instructing what they already did** → telling someone to develop a skill they just demonstrated reads as not having paid attention. Before any "the next level is X" advice, check they didn't already show X. If they did, credit it and push to make it *systematic* ("you did this with Mapbox; the step up is doing it by default, not case by case").

### Step 4: Apply strictness based on audience

Not every piece of writing needs full Kao treatment. Strictness ladder:

- **Strict** (CEO, cross-functional lead, customer, marketing): apply principles hard. Rewrite freely. Flag anything that could cause a misread, a pushback, or a lost deal. Insist on BLUF, MOO, and an explicit ask.
- **Relaxed** (product teammate, peer, casual Slack): apply principles lightly. Don't sand off the user's voice or warmth. A casual Slack to a teammate doesn't need a BLUF, it needs to be human. Cut obvious bloat; leave the rest.

If you're unsure, lean strict for anything external or upward, relaxed for anything internal or lateral. When in doubt, ask: "is this going up, across, or to a customer?" If yes → strict. "Is this to a teammate you work with daily?" If yes → relaxed.

### Step 5: Deliver the output

Follow the mode:

**Critique mode output:**
```
What's working: [1–2 things done well, specific]
What's not landing: [2–4 specific issues, each tied to a Kao principle]
The real problem: [one sentence: the single biggest issue to fix]
Suggested path: [one paragraph: how you'd attack the rewrite]
```

**Refine mode output:**
```
Rewritten draft:
[the rewrite, formatted for the target channel]

What changed and why:
- [change]: [the Kao principle it fixes, in one line]
- [change]: [principle]
- [change]: [principle]
```

Keep the "what changed" list to 3–5 items. If there are more, the draft needed a structural rethink, not edits. Say so.

**Coach mode output:**
```
Before I draft, I want to make sure we've got the strategy right. Two questions:
1. [question targeting the QBQ: what does the reader actually need to decide/do?]
2. [question targeting the MOO or the ask: what's the objection you're most worried about? / what's the single outcome you want?]

Once you answer, I'll draft.
```

If the user has already answered these in context, skip straight to draft.

### Step 6: Self-check before sending

Before returning the output, run through this seven-item check silently:

1. **BLUF check**: does the first sentence carry the main point or ask? (Strict audiences: yes. Relaxed: at least by sentence 2.)
2. **MOO check**: would a skeptical reader have an objection the draft doesn't address in the first paragraph? If so, fix.
3. **Concision check**: can any sentence be cut without losing meaning? Cut it.
4. **Voice check**: does it sound like you, or does it sound like a LinkedIn post? Aim for direct, warm, and dry. Avoid corporate-speak, hedging, and filler ("just wanted to circle back", "hope this finds you well", "I think maybe we could perhaps consider").
5. **Ask check**: is the next action clear? If not, add it.
6. **AI-tell sweep**: scan for performative praise labels ("that's the kind of thinking we look for", "X stuck with us"), announced honesty ("honestly", "genuinely", "one honest note"), em dashes and spaced hyphens (" - "), and emotion-labelling ("we loved", "so excited"). Cut them. If a sentence's only job is to tell the reader how to feel about the previous sentence, delete it.
7. **Receipts check** (when the piece credits or characterises someone): can you point to the source for each specific claim? Kill or soften anything you can't. A compliment that's wrong costs more credibility than no compliment.

If any check fails, revise before delivering.

## Voice calibration (make it yours)

This section is a template. Fill in your own defaults so the skill writes in your voice, not a generic one. Define each dimension for your context, then let it hold unless a specific piece overrides it:

- **Tone**: define your own (e.g. direct, warm, dry; or formal and precise; or plain and friendly). Whatever you pick, name the failure modes to avoid: corporate-speak on one side, performatively casual on the other. A concrete anchor helps ("X is fine to a teammate; 'I wanted to reach out to discuss' is never fine to anyone").
- **Register / locale**: match your company's established voice, spelling, and locale. Don't let the skill Americanise (or Anglicise) copy your company writes a different way. Note any house-style words to prefer or avoid ("leverage", "circle back", "reach out") for your audience.
- **Hedge allergies**: strip "just", "I think", "I was wondering if", "maybe we could possibly", "sorry to bother". These dilute authority, especially managing up. Add any others you personally over-use.
- **Confidence calibration**: state recommendations as recommendations ("I recommend X because Y") without apology. Coach toward that voice when drafts show over-hedging. If your role or seniority warrants a specific register, define it here.
- **No em dashes, and no spaced hyphens standing in for them**: use a comma, a colon, a full stop, or parentheses. A colon is the usual fix when a dash was introducing an elaboration. The " - " spaced hyphen creeping in is the most common failure mode; it reads as a dash you forgot to fix.
- **No performative praise labels**: don't state a reaction to the thing instead of the thing ("that's the kind of thinking we look for", "X really stuck with us", "exactly the shape we want", "this is exactly what we look for"). Name the specific thing and stop. The specificity *is* the praise; the label reads as AI and, in feedback, faintly condescending. Before: *"The cold-start reframe stuck with us. That's the kind of thinking we look for."* After: *"The strongest part was the cold-start reframe: you stopped at 'this is annoying', asked why, and landed on recall versus recognition."*
- **Assume honesty is the default; never announce it**: cut "honest", "honestly", "genuinely", "truly", "to be honest", "one honest piece of feedback". Labelling one line honest implies the rest isn't. The fix is deletion, not rephrasing.
- **Receipts before you credit**: every specific, verifiable claim in a compliment or characterisation needs a source you can point to. A compliment that's wrong costs more credibility than no compliment. See `principles/accurate-confidence.md` (receipts before you credit).

**Phrase blocklist (cut on sight, any audience):** "that's the kind of X we look for", "X stuck with us", "exactly the shape we look for", "honestly", "genuinely", "truly", "to be honest", "one honest piece of feedback", "we loved", "came alive", "I'd be remiss", "needless to say", plus em dashes and " - " spaced hyphens.

The AI tell isn't formality, it's redundancy and unearned warmth: stating the observation, then a feeling about it, then the category it belongs to, plus compliments with no receipt. A strong voice states the specific once, backs it, and stops.

If you explicitly ask for a different tone (e.g., "make this warmer" or "this needs to sound more formal"), override these defaults.

## Things this skill deliberately doesn't do

- **Does not apply every principle to every draft.** Pick the 2–3 that matter. Over-applying dilutes feedback.
- **Does not rewrite a user's voice into something generic.** Kao's principles are about clarity and strategy, not about making everyone sound the same. Preserve phrasing that's recognisably the user's.
- **Does not cover decks, slide presentations, or live-verbal scripts.** Out of scope. If asked, redirect.
- **Does not police grammar or typos.** Unless explicitly asked. Focus is on strategic communication, not proofreading.
- **Does not lecture.** The user knows these frameworks exist by now. Cite the principle by name when explaining a fix, but don't explain the whole principle in-line unless asked.

## A worked example

Draft the user pastes: *"Hi [CEO], hope you're well! Just wanted to circle back on the pricing discussion from last week. I know we talked about a few different options and I've been thinking about it more and I think maybe we should consider going with the tiered approach, although there are some risks, so keen to hear your thoughts. Also wanted to flag that the eng team might push back on timelines. Let me know when you have 5 mins to chat!"*

Audience: CEO. Format: Slack. Mode: default → refine.

Strictness: strict.

Principles in play: BLUF, MOO, concise, strategy-not-self-expression, enthusiastic-yes.

Diagnosis: lede buried three clauses deep; hedges everywhere ("just wanted", "I think maybe", "should consider"); MOO (eng pushback) mentioned but not addressed; no clear ask.

Refined output:

> [CEO], recommending we go with the tiered pricing approach. Main risk is eng timeline pushback; I've scoped a 2-week delivery with [eng lead] and they're comfortable. Want to lock this in by Friday so we can brief sales next week. 5 mins today or tomorrow?

What changed and why:
- Lede first, not last: BLUF / signposting
- Cut 6 hedges ("just", "I think maybe", "should consider", "keen to hear"): concise / managing up
- MOO (eng pushback) named and resolved in same breath: MOO
- Clear ask with a deadline: enthusiastic yes

## Reference file structure

```
refine/
├── SKILL.md (this file)
├── principles/
│   ├── minimum-viable-backstory.md
│   ├── signposting.md
│   ├── qbq.md
│   ├── moo.md
│   ├── sales-then-logistics.md
│   ├── accurate-confidence.md
│   ├── how-to-be-concise.md
│   ├── enthusiastic-yes.md
│   ├── the-warm-no.md
│   ├── managing-up.md
│   ├── strategy-not-self-expression.md
│   ├── present-to-ceo.md
│   ├── right-amount-of-context.md
│   ├── yellow-spot-into-sun.md
│   ├── cedaf-delegation.md
│   └── finesse.md
├── audiences/
│   ├── ceo.md
│   ├── cross-functional.md
│   ├── peers.md
│   └── customers-and-marketing.md
├── formats/
│   ├── slack.md
│   ├── email.md
│   └── customer-and-marketing.md
└── scripts/
    └── check-principle-coverage.sh
```

Read the reference files as needed, don't load them all upfront. The 2–3 principles you select in Step 2, plus the audience and format files, is usually the right load.

## Maintaining this skill (adding a principle)

Principles get added over time. When you add one, three things need to stay in sync, or the new principle quietly never gets used:

1. **The registry** — add the principle to the "Core principles" list in this file (with its `principles/<stem>.md` link), and to the Step-2 selection heuristics and Step-3 diagnosis patterns where relevant.
2. **The audiences** — decide which of the four audience playbooks it changes. Not every principle belongs in every audience, but most belong in at least one. Reference it in that audience's "Default principles to apply" list (link it as `principles/<stem>.md` so the coverage check can see it) and add a worked example if it earns one.
3. **The description** — if the principle is a new headline concept, add it to the `description:` frontmatter trigger list.

To check nothing was missed, run the coverage script:

```sh
./scripts/check-principle-coverage.sh
```

It prints a matrix of every principle against SKILL.md and the four audiences, using forgiving matching (case-insensitive, hyphens and spaces treated as equivalent, so prose names like "Right amount of context" count). It flags two things:

- **Missing from SKILL.md** — the principle isn't in the registry at all. Always fix this; the default run exits non-zero on it.
- **Orphan (no audience references it)** — advisory. A principle can legitimately sit outside the audience playbooks (e.g. a delegation framework), but an orphan usually means a playbook is out of date. Review each one.

Use `--quiet` to see only the gaps, or `--strict` to also fail the run on orphans (useful in CI once every principle is deliberately wired in).
