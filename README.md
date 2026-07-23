# skills

[![skills.sh](https://skills.sh/b/kinantid/skills)](https://skills.sh/kinantid/skills)

Agent skills for writing that lands, in the open `SKILL.md` format. They run in
[Claude Code](https://claude.com/claude-code),
[Codex](https://developers.openai.com/codex/skills) (app, CLI, and IDE
extension), Cursor, Gemini CLI, and the other tools that read the format.

## Why use it

Agents write competent prose, and competent is the problem. They bury the lede,
open with backstory, hedge every claim, and sound like everyone else's agent.
`refine` encodes the decisions that make a message land instead: what to cut,
what to lead with, and how to read the room, so a Slack to your CEO or a note to
a customer reads like you actually meant it.

The frameworks are [Wes Kao](https://www.weskao.com/)'s (BLUF, minimum viable
backstory, signposting, most obvious objection, "sales then logistics", the warm
no, and more), restated as working aids and adapted to *who* you're writing to
and *where* it lands. See [Credits & attribution](#credits--attribution).

## Install

### Clone & symlink (recommended: it protects your voice doc)

These skills are built to be personalised: `refine` reads a gitignored
`voice/VOICE.md` that you create from your own writing (see
[Personalise refine](#personalise-refine-build-a-voice-doc)). A clone keeps
that safe: `git pull` updates the skill and never touches your voice doc,
because it isn't tracked. Installer-copied skills keep VOICE.md inside the
copy, where an update or reinstall can silently overwrite it.

```sh
git clone https://github.com/kinantid/skills.git
cd skills
```

For **Codex** (app, CLI, and IDE extension; it reads `~/.agents/skills` and
follows symlinks):

```sh
mkdir -p ~/.agents/skills
ln -s "$(pwd)/skills/refine" ~/.agents/skills/refine
```

For **Claude Code**:

```sh
./install.sh              # symlinks every skill into ~/.claude/skills
./install.sh --dry-run    # show what would change, do nothing
./install.sh --force      # replace an existing real directory at a target path
```

Then **start a new chat**. Type `$refine` (Codex) and paste a Slack message,
email, memo, or any draft. Or skip the command: paste a draft, ask for
feedback, and the skill triggers on its own when it fits.

Your clone is the single source of truth: `git pull` (or a local edit) is live
immediately, no reinstall. You may need a new chat for the agent to pick it
up. Set `CLAUDE_SKILLS_DIR` to target somewhere other than `~/.claude/skills`.
If a symlink command says the file already exists, you previously installed by
another path. Remove that copy first (e.g. `rm -rf ~/.agents/skills/refine`),
then re-link.

### Quick try (no clone)

Fine for a first spin; switch to the clone before you build a voice doc.

With [Node.js](https://nodejs.org) installed, run the [skills.sh](https://skills.sh)
installer: it auto-discovers every skill in `skills/` and prompts you to pick
skills and agent (pass `-a codex`, `-a cursor`, etc. to be explicit):

```sh
npx skills add kinantid/skills
```

Or, with no terminal at all, open a Codex chat and ask:

> Install the `refine` skill from `kinantid/skills`.

Codex uses its built-in skill installer; approve the prompt when it asks to
fetch the repository. Either way, start a new chat and type `$refine`.

## Skills

- **[refine](skills/refine/SKILL.md)**: communication refinement. Point it at any
  Slack message, email, memo, update, or bit of marketing copy and it diagnoses
  what's not landing and rewrites it, or coaches you through the strategy first,
  adapting to *who* you're writing to (CEO, cross-functional, peers,
  customers/marketing) and *where* it lands.
- **[ux-writing](skills/ux-writing/SKILL.md)**: interface copy (microcopy).
  Buttons, error messages, empty states, forms, confirmations, notifications -
  the text people read mid-task. Built on Torrey Podmajersky's four quality
  standards and the MIT-licensed
  [content-designer/ux-writing-skill](https://github.com/content-designer/ux-writing-skill),
  with Jenni Nadler's Wix error-message anatomy and in-product conventions
  (punctuation, length targets, verb precision) folded in. Personalise it with
  a gitignored `product/PRODUCT.md` overlay (terminology, house style, brand
  voice pointer) - same idea as refine's voice doc: `git pull` never touches it.

### Personalise refine: build a voice doc

Once refine is installed and you've used it a few times, make it sound like
you instead of a generic default. Gather 20-50 samples of your real writing
across registers (sent emails, LinkedIn posts, Slack/WhatsApp messages, docs)
and have your agent distill them into `skills/refine/voice/VOICE.md` using the
committed template (`voice/VOICE.template.md`). The filled-in doc is
gitignored: it's personal, it never leaves your machine. When it exists, the
skill reads it automatically and it overrides the generic voice defaults.

This is why the [recommended install](#clone--symlink-recommended-it-protects-your-voice-doc)
is clone-and-symlink: your voice doc lives in the clone, gitignored, untouched
by updates. If you quick-tried via the CLI installer instead, switch to the
clone before building your voice doc (or keep a backup of VOICE.md outside the
install path: updates and reinstalls can silently overwrite a copy kept
inside it).

Three things make or break the voice doc:

1. **Real samples, not adjectives.** "Warm and direct" produces generic prose;
   ten actual Slack messages produce you.
2. **Exclude AI-drafted text ruthlessly.** If an assistant wrote it, it isn't
   your voice; including it bakes AI prose into the spec and defeats the point.
   Your agent can retrieve candidates (sent mail, post history, chat exports) and
   you curate: mark each sample as yours, assisted, or not-you before distilling.
3. **Short-form is ground truth.** Chat messages and quick replies are
   unambiguously typed by you; polished longform often isn't. Let short-form set
   the sentence texture and let the skill's principles carry longform structure.

The full workflow (including using a cheap model for bulk extraction) is in the
skill's "Voice calibration" section.

→ **[Read the full skill](skills/refine/SKILL.md)**: the principles, the audience
playbooks (CEO, cross-functional, peers, customers/marketing), the formats, and
how to extend it.

## Credits & attribution

These skills **restate and adapt other people's frameworks** in original wording,
as working aids: the ideas are theirs. The bulk of the `refine` skill is
**[Wes Kao](https://www.weskao.com/)'s work**; other principles credit other
authors. Each principle file names its source, and every source is listed in
[`CREDITS.md`](CREDITS.md) with a link to where you can read and support them.

This repo is **independent and unofficial**: not affiliated with, endorsed by,
or reviewed by any of the people credited. If a framework is useful to you, go
support the person who developed it; these skills aren't a substitute for the
source material.

Adding your own principle from a source? Follow the attribution convention in
[`CREDITS.md`](CREDITS.md): credit in the file, restate rather than reproduce,
add the author to the credits table, and attribute accurately.

## License

The **MIT license ([LICENSE](LICENSE)) covers only this repository's own
expression**: the skill's playbooks, examples, scripts, and structure. It does
**not** grant any rights in the underlying frameworks, nor in any third party's
copyrighted text or trademarks, which remain with their respective owners.
Copyright protects the specific expression of an idea, not the idea, method, or
its name; this skill teaches and applies the frameworks in original wording and
reproduces no substantial verbatim text from any source.
