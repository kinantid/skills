# land-it

A [Claude Code](https://claude.com/claude-code) skill for **making your writing land** — refine, critique, and coach on written communication before you hit send.

It applies a small, opinionated set of [Wes Kao](https://www.weskao.com/)'s communication frameworks (BLUF, minimum viable backstory, signposting, QBQ, MOO, "sales then logistics", finesse, the warm no, and more) and adapts them to *who* you're writing to and *where* it lands.

Point it at any Slack message, email, memo, update, customer note, or bit of marketing copy and it will diagnose what's not landing and rewrite it — or coach you through the strategy first.

## What's in it

The skill (`skills/communication-refinement/`) is organised into three layers:

- **`principles/`** — one file per Kao framework. The reusable ideas.
- **`audiences/`** — playbooks for four reader types (CEO/exec, cross-functional leads, peers, and customers/marketing), each with its own strictness and worked examples.
- **`formats/`** — templates for Slack, email, and customer/marketing copy.

`SKILL.md` ties them together: identify the mode (critique / refine / coach), audience, and format; load only the 2–3 principles that matter; diagnose; rewrite; self-check.

## Make it yours

The skill ships with a **"Voice calibration (make it yours)"** section in `SKILL.md`. Fill in your own tone, register, locale, and hedge-allergies so it writes in *your* voice, not a generic one. The worked examples use bracketed role placeholders (`[CEO]`, `[eng lead]`, `[customer]`, `[product]`, `[your name]`) — read them as slots to fill with your own people, product, and context.

## Install

Clone the repo, then run the installer. It symlinks every skill under `skills/`
into `~/.claude/skills`, so the repo stays the single source of truth.

```sh
git clone https://github.com/kinantid/land-it.git
cd land-it
./install.sh
```

Because the skills are symlinked (not copied), editing a file in this repo is
immediately live in Claude Code. No resync step. `git pull` to get updates.

Options:

```sh
./install.sh --dry-run   # show what would change, do nothing
./install.sh --force     # replace an existing real directory at a target path
```

Set `CLAUDE_SKILLS_DIR` to install somewhere other than `~/.claude/skills`.

## Extending it (adding a principle)

Principles get added over time. When you add one, three things need to stay in
sync or it quietly never gets used: the registry in `SKILL.md`, the relevant
audience playbooks, and the `description:` triggers. To catch anything missed,
run the coverage check:

```sh
./skills/communication-refinement/scripts/check-principle-coverage.sh
```

It maps every principle against `SKILL.md` and the four audiences and flags
principles that aren't in the registry (fatal) or aren't referenced by any
audience (advisory). See the "Maintaining this skill" section of `SKILL.md`.

## Credit

The frameworks are [Wes Kao](https://www.weskao.com/)'s; this repo packages them
as a Claude Code skill. Read her writing for the source material.
