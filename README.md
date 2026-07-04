# skills

A collection of [Claude Code](https://claude.com/claude-code) skills.

## Install

### With the `skills` CLI (recommended)

```sh
npx skills add kinantid/skills
```

Then pick the skills you want. This is the [skills.sh](https://skills.sh) installer —
it auto-discovers every skill in `skills/` and installs the ones you select.

### Or symlink from a clone

```sh
git clone https://github.com/kinantid/skills.git
cd skills
./install.sh
```

`install.sh` symlinks every skill under `skills/` into `~/.claude/skills`, so the
repo stays the single source of truth — editing a file here is immediately live
in Claude Code, no resync. `git pull` to get updates, re-run `./install.sh` to
link anything new.

```sh
./install.sh --dry-run   # show what would change, do nothing
./install.sh --force     # replace an existing real directory at a target path
```

Set `CLAUDE_SKILLS_DIR` to install somewhere other than `~/.claude/skills`.

## Skills

### `refine` — communication refinement

Refine, critique, and coach on written communication using [Wes Kao](https://www.weskao.com/)'s
frameworks (BLUF, minimum viable backstory, signposting, QBQ, MOO, "sales then
logistics", finesse, the warm no, and more), adapted to *who* you're writing to
and *where* it lands.

Point it at any Slack message, email, memo, update, customer note, or bit of
marketing copy and it will diagnose what's not landing and rewrite it — or coach
you through the strategy first.

The skill is organised into three layers:

- **`principles/`** — one file per Kao framework. The reusable ideas.
- **`audiences/`** — playbooks for four reader types (CEO/exec, cross-functional
  leads, peers, customers/marketing), each with its own strictness and examples.
- **`formats/`** — templates for Slack, email, and customer/marketing copy.

**Make it yours.** The `SKILL.md` "Voice calibration (make it yours)" section is
a fill-in-your-own template — set your tone, register, locale, and hedge-allergies
so it writes in your voice. Worked examples use bracketed role placeholders
(`[CEO]`, `[eng lead]`, `[customer]`, `[product]`, `[your name]`); read them as
slots to fill with your own context.

**Extending it.** When you add a principle, three things must stay in sync (the
`SKILL.md` registry, the audience playbooks, and the `description:` triggers). Run
the coverage check to catch anything missed:

```sh
./skills/refine/scripts/check-principle-coverage.sh
```

## Credits & attribution

The communication frameworks referenced in the `refine` skill (BLUF, minimum
viable backstory, signposting, "most obvious objection", "sales then logistics",
finesse, and others) are **[Wes Kao](https://www.weskao.com/)'s work**. Each
principle file credits its source. This repo is an **independent, unofficial**
restatement and adaptation of those ideas in our own words, built as a Claude
Code skill — it is **not affiliated with, endorsed by, or reviewed by Wes Kao**.

If these frameworks are useful to you, go read and subscribe to
[her newsletter](https://www.weskao.com/) — this skill is a working aid, not a
substitute for the source material.

Where a framework originates elsewhere, it's credited to the original author
(e.g. "the question behind the question" as a communication move is distinct from
John G. Miller's trademarked *QBQ® / The Question Behind the Question*; the "warm
no" close draws on Alison Green / Ask a Manager).

## License

The **MIT license ([LICENSE](LICENSE)) covers only this repository's own
expression** — the skill's playbooks, examples, scripts, and structure. It does
**not** grant any rights in the underlying frameworks, nor in any third party's
copyrighted text or trademarks, which remain with their respective owners.
Copyright protects the specific expression of an idea, not the idea, method, or
its name; this skill teaches and applies the frameworks in original wording and
reproduces no substantial verbatim text from any source.
