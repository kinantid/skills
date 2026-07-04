# The Right Amount of Context

**Source**: Wes Kao, "How I give the right amount of context"

## The core idea

Too little context and the reader can't act. Too much and they disengage. The sweet spot varies per reader, per topic, per moment. Calibrating it is one of the hardest communication skills and one of the highest-leverage.

## Why it matters

Getting context wrong is the most common failure mode in professional writing:

- **Over-context**: readers skip or lose patience. You signal that you don't trust them to understand quickly.
- **Under-context**: readers push back or misinterpret. You signal that you haven't thought about their perspective.

Both failures are corrosive to trust. Getting it right makes you look effortlessly effective.

## The 10 principles (synthesised from Kao's framework)

### 1. Start with what the reader already knows
Don't re-explain things they own. Don't assume they know things outside their lane. If in doubt, ask: "are they close to this or far from it?"

### 2. Provide context at the point of need, not upfront
A frontloaded context dump is boring. Instead, introduce context where it becomes load-bearing. *"The tradeoff here matters because [context]"* beats a paragraph of setup at the top.

### 3. Use links and appendices
If 20% of readers need full context and 80% don't, link to the full context, summarise it in one line, and let the readers who need more click through.

### 4. Prioritise context by decision-relevance
Every piece of context you include should change either the reader's belief or the reader's action. If it does neither, cut it.

### 5. Lead with the "what" before the "why"
Most writing inverts this, building up to the point with a long "why." Readers process "what, then why" faster. Say the thing, then justify it.

### 6. Match context depth to decision weight
A small decision needs a small context. A major decision warrants more. Don't waste 10 paragraphs of context on a routine update.

### 7. Calibrate to the reader's seniority
- Execs: less context, more conclusion. They trust you did the work.
- Peers: medium context. Enough to understand, not enough to re-do your thinking.
- Juniors / new team members: more context. They need to learn, not just decide.

### 8. Use numbers, not adjectives
"A lot of users" is bad context. "14,200 users, up 22% from last month" is good context. Numbers are dense information; adjectives are low-density.

### 9. Preempt the context question
If you know the reader will ask "wait, why this approach?", answer it before they ask. *"Going with X (not Y, because Z)."*

### 10. Test by removing
Draft, then ask: "if I cut this sentence, does the reader lose the ability to decide?" If no, cut it. If yes, keep it.

## The calibration by audience

Quick rules of thumb:

| Audience | Default context depth |
|---|---|
| CEO / board | Minimal: bottom line + one number + one risk. Rest on request. |
| Cross-functional leads (eng, GTM, CS) | Medium: enough for them to pressure-test from their lane. |
| Peer PMs | Medium: enough for them to give useful feedback or collaborate. |
| Your team | Depends: sometimes minimal (they know the work), sometimes full (they're new). |
| Customers | Medium: enough to understand the value, not enough to feel lectured. |
| Marketing readers (external) | Minimal: one promise + one proof + one CTA. |

## Before / after

**Before (wrong amount: too much context for CEO):**
> [CEO], want to share an update on activation. As a refresher, activation is defined as users completing at least 3 meaningful actions in their first 7 days. We measure it via event tracking in Amplitude, and the baseline we've been tracking against was established in Q4 2024 when we set the OKR. Since then, we've made several iterations to the onboarding flow, including an in-app tour that we shipped in February and a set of checkpoint emails that we shipped in March. The March iteration was based on research from the user research team that indicated…

**After (right amount: BLUF, one number, offer more):**
> [CEO], activation is up to 41% this week (from 28% baseline). Onboarding redesign is the main driver. Full breakdown in the memo if useful, but headline is: we're above Q2 target three weeks early.

## Before / after (too little context)

**Before (too little):**
> Want to move to Adyen.

This is unactionable. The reader can't evaluate without more.

**After (right amount: the why, the how, the risk):**
> Recommending we move payments to Adyen. Saves ~0.4% in fees (~$120k/yr at current volume), cleaner API reduces eng maintenance. Migration is 4 weeks with rollback via config flag. No customer-facing change.

Enough for the reader to decide.

## Common failure mode

Dumping everything "just in case." If you find yourself writing *"for full context,"* you're probably adding too much. The right move is usually to link to a longer doc and keep the message tight.

## The test

After writing, read it as the reader and ask: "could I act on this now?" If no, add context. "Am I skimming past things?" If yes, cut context.

If the reader is a CEO, the bar is even higher: would they read this in the five seconds they have between meetings? If no, it's still too long.
