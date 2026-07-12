# skills

A collection of agent skills in the open `SKILL.md` format. They run in
[Claude Code](https://claude.com/claude-code), Codex, ChatGPT, Cursor, Gemini
CLI, and the other tools that read the format.

## Install

### With the `skills` CLI (recommended)

```sh
npx skills add kinantid/skills
```

Then pick the skills you want. This is the [skills.sh](https://skills.sh) installer:
it auto-discovers every skill in `skills/` and installs the ones you select. It
targets the agent you're using; pass `-a` to be explicit, e.g.
`npx skills add kinantid/skills -a codex` or `-a cursor`.

### Or symlink from a clone

```sh
git clone https://github.com/kinantid/skills.git
cd skills
./install.sh
```

`install.sh` symlinks every skill under `skills/` into `~/.claude/skills`, so the
repo stays the single source of truth: editing a file here is immediately live
in Claude Code, no resync. `git pull` to get updates, re-run `./install.sh` to
link anything new.

```sh
./install.sh --dry-run   # show what would change, do nothing
./install.sh --force     # replace an existing real directory at a target path
```

Set `CLAUDE_SKILLS_DIR` to install somewhere other than `~/.claude/skills`.

For Codex and other agents that read `~/.agents/skills` (Codex follows symlinks),
link the skill there instead:

```sh
ln -s "$(pwd)/skills/refine" ~/.agents/skills/refine
```

**If you build a voice doc, prefer the clone-and-symlink install.** Your
`voice/VOICE.md` is gitignored, so `git pull` updates the skill without ever
touching it. Installer-copied skills keep VOICE.md inside the copied directory,
where an update or reinstall can silently overwrite it — if you use the CLI
installer, keep a backup of your voice doc outside the install path.

## Skills

### `refine`: communication refinement

Refine, critique, and coach on written communication using [Wes Kao](https://www.weskao.com/)'s
frameworks (BLUF, minimum viable backstory, signposting, most obvious objection,
"sales then logistics", finesse, the warm no, and more), adapted to *who* you're
writing to and *where* it lands. Point it at any Slack message, email, memo,
update, or bit of marketing copy and it diagnoses what's not landing and rewrites
it, or coaches you through the strategy first.

**To make it sound like you, build a voice doc.** Gather 20-50 samples of your
real writing across registers (sent emails, LinkedIn posts, Slack/WhatsApp
messages, docs) and have your agent distill them into `skills/refine/voice/VOICE.md`
using the committed template (`voice/VOICE.template.md`). The filled-in doc is
gitignored: it's personal, it never leaves your machine. When it exists, the
skill reads it automatically and it overrides the generic voice defaults.

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
