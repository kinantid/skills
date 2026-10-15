# Building voice/VOICE.md

Read this only when building or rebuilding the voice doc. VOICE.md is gitignored: it's personal and never gets committed.

1. **Gather real samples across registers**: sent emails, Slack and WhatsApp messages, LinkedIn posts, docs. 20-50 pieces is plenty; range matters more than volume (a terse chat message *and* a long email). Exports are ideal (Gmail, Slack, LinkedIn posts page); screenshots work too. With Slack or Gmail connected, an agent can pull sent messages directly.
2. **Keep only text the user typed themselves.** AI-drafted or AI-edited text bakes assistant prose into the spec and defeats the point. Signals of authentic text: short, fast-typed, typos, lowercase, older (before the user used an assistant for drafting). Signals of AI text: em dashes, "genuinely/honestly", bold-header layouts in casual channels, symmetrical triads. When unsure, leave it out and note why.
3. **Distill into `VOICE.template.md`'s structure.** Every claim traces to a kept sample; mark targets the user wants but doesn't yet hit as `[aspirational]`. For a large corpus, batch extraction through cheap fast subagents (recurring openers, hedges, sentence stats per batch), then synthesise once.
4. **Mine the contrast.** Phrases that appear in the user's AI-drafted messages but never in their own writing are the most valuable output: put them in VOICE.md's phrase blocklist and in `voice/blocklist.txt` so the linter enforces them.
5. **Date-stamp and rebuild** when the user's role or register changes. Between rebuilds, retro mode (see SKILL.md) keeps it current from real sent messages.
