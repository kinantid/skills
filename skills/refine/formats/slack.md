# Format: Slack / Chat

## Why Slack is different

Slack is fast, informal, and interruptive. It's not email in bite-sized chunks. It's a different medium with different rules.

Key properties:

- Readers are doing 3+ things at once.
- Messages get seen, or they don't. There's no second pass.
- Threads fragment attention; long messages in threads go unread.
- Formatting is limited (bold, italics, bullets, code, that's roughly it).
- Casual register is the norm; overly formal messages read as cold.
- Async-ness varies: some channels are real-time, some are catch-up-later.

## Structural templates by purpose

### Template 1: Update / FYI

```
[One-line headline: the thing they need to know]

[1-2 sentences of context if needed]

[Optional: what you want them to do with this: or nothing if it's truly FYI]
```

Example (to eng lead):
> heads up, shifting the QA deadline to Fri. got pushback from CS on the current scope, agreed to add 2 more test cases. no eng change needed but wanted you to know

### Template 2: Ask / Decision request

```
[The ask: one sentence]

[Why it matters / context: 1-2 sentences]

[What you need from them: specific action + timing]
```

Example (to cross-functional lead):
> [eng lead], can the QA team take on one extra test case for the billing migration?
>
> it's the retry edge case; CS flagged it as the highest-likelihood failure mode.
>
> 30 min of their time. this week if possible?

### Template 3: Flag a problem

```
[The problem: one sentence, with the severity level]

[What's happening / what's at risk]

[What you're doing about it + what you need]
```

Example (to CEO):
> heads up, we've got a minor sync issue affecting ~12 customers since 9am.
>
> eng is fixing it now, rollout in the next hour. impact is contained (no data loss, just delay).
>
> will send update when resolved. no action needed unless you're asked about it.

### Template 4: Recommendation / pitch

```
[Recommendation: one sentence]

[One hero supporting fact]

[MOO + your response: one sentence]

[Ask / next step]
```

Example (to CEO):
> [CEO], recommend we delay the pricing change to Q3.
>
> two deals ($240k total) are mid-pipeline at current pricing; repricing would restart negotiations.
>
> know we wanted Q2 revenue impact; this preserves Q2 and adds clarity to Q3 deals. OK to push?

## Slack-specific tactics

### 1. First 8 words do the heavy lifting
Slack previews cut off around 8 words. Make the first 8 carry the message.

- Bad: *"Hey, hope your week's going well. Wanted to flag…"*
- Good: *"Flagging a blocker on the onboarding launch."*

### 2. Break one big idea into a few short messages, carefully
Multiple short messages = natural rhythm. But 5+ pings on one topic is annoying.

- Natural: 2 messages: the point, then the ask.
- Annoying: 6 messages: one per sentence, notifying the person every time.

If you have lots to say, either use one longer message or use a thread.

### 3. Use threads for sustained discussion, not opens
Starting a thread with your opener = people miss it. Post the opener in-channel; use the thread for follow-up discussion.

### 4. Bold sparingly, for scannable anchors
One bolded phrase per Slack message, max. More than that and you're shouting.

### 5. Don't greet in professional channels
*"Hi team! Hope you're all doing well. Just wanted to…"* is padding. Start with the substance.

### 6. If you're in doubt about tone, say the ask first, warmth after
Slack openers that lead with the ask feel efficient and respectful, not cold, if followed by any warmth at all.

### 7. Use humour
Slack tolerates (and rewards) dry humour more than email does. If your voice leans dry/warm, let it through, just not at the expense of clarity.

### 8. Emojis in moderation
One emoji where it adds tone. Two max. Don't stack. (`:ok_hand:` at the end of a confirmation message is fine.)

## Slack by audience

| Audience | Slack default |
|---|---|
| **CEO** | Short, direct, often no greeting. One ask per message. Leads with the point. 2-4 sentences total. |
| **Cross-functional lead** | Warmer than CEO, but still lead with the ask. 3-6 sentences. Address their function's likely objection. |
| **Peer / teammate** | Casual, short, direct. Greetings fine ("oi", "hey"). Humour welcome. 1-3 sentences usually enough. |
| **Customer** | Rare (Slack Connect only). Keep it professional but warm; treat like a short email. Never casual first contact. |

## Anti-patterns in Slack

- **The long preamble**: *"Hi, hope you're well, sorry to bother, I was wondering if I could ask…"*: cut all of it.
- **The buried ask**: 4-paragraph Slack ending with "let me know what you think": restructure to lead with the ask.
- **The vague ping**: *"Can we chat?"*: give a reason. *"Can we chat about the onboarding launch timing? 10 min."*
- **Slack-as-memo**: posting a 500-word message in #general: use a doc, link to it.
- **Notification abuse**: pinging someone 6 times in 10 minutes: consolidate into one message or wait for a response.
- **Passive-aggressive check-in**: *"Any update on this?"* with no context: at least remind them what "this" is.

## Before / after (Slack rewrites)

### To CEO

**Before:**
> Hi [CEO], hope you're having a great day! I wanted to share an update on the onboarding work. We've been working on the redesign for a few weeks now and things are going well. Let me know if you have any questions :)

**After:**
> [CEO], onboarding redesign on track to ship 3 May. Activation in prototype hitting 38% (vs 28% baseline). Full memo in #product if useful.

### To cross-functional lead

**Before:**
> Hey [eng lead], quick question (no rush at all!), was just wondering if maybe eng might have some bandwidth to look at a small thing on the billing webhook? It's related to retries and I think it might be kind of a small lift but I'm not sure. Let me know when you have a sec.

**After:**
> [eng lead], small webhook thing (retry edge case). estimated ~1 day. can eng take it this sprint or defer to next?

### To peer

**Before:**
> Hi [teammate], I wanted to reach out to discuss the design review we had yesterday. I had some thoughts on the feedback and wanted to share them with you. Do you have some time later this week to chat?

**After:**
> oi [teammate], was thinking about the review yesterday, had a few thoughts on the nav pattern. coffee thurs?

## When Slack isn't the right medium

Redirect to a doc or email when:

- The message is >150 words and not a quick update
- Multiple people need to read and react at different times
- The content needs to be searchable / referenced later
- You're proposing something formal (pricing, hires, roadmap)
- The topic is sensitive / could cause conflict

In those cases, write the doc or email, then Slack a link with a 1-line context.
