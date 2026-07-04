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

## Skills

### `refine`: communication refinement

Refine, critique, and coach on written communication using [Wes Kao](https://www.weskao.com/)'s
frameworks (BLUF, minimum viable backstory, signposting, most obvious objection,
"sales then logistics", finesse, the warm no, and more), adapted to *who* you're
writing to and *where* it lands. Point it at any Slack message, email, memo,
update, or bit of marketing copy and it diagnoses what's not landing and rewrites
it, or coaches you through the strategy first.

**To make it sound like you, give it samples of your own writing.** Paste a few
real messages or emails, drop in screenshots of a thread, or point it at an export
(Slack, email, a Google Doc). It calibrates tone, register, and habitual hedges
from what you actually write, not from adjectives. Details are in the skill's
"Voice calibration" section.

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
