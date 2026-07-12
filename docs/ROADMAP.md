# Roadmap: Codex plugin, marketplace, and the skills platform

Tracked in Linear: [Kinadesy Skills](https://linear.app/kinanti/project/kinadesy-skills-53e9e58e334f) (KIN-111 … KIN-121).

**Outcome sought**: kinadesy.com is an easy install guide; a Codex user installs in one command (or two). Value/demo lives in a separate presentation, not the website.

This repo serves two distribution models at once:

1. **Cross-agent collection** via `npx skills add kinantid/skills` — selective install for Claude Code, Cursor, Gemini CLI, and other open-format agents.
2. **Codex/ChatGPT plugin** — one plugin (`kinadesy-skills`) bundling everything under `skills/`, served from a self-hosted marketplace in this repo.

The trade-off is intentional: plugin users get the collection as one bundle; `npx skills` users pick individual skills.

## Phase 1 — meetup scope (KIN-111 … KIN-115)

1. **Plugin manifest** `.codex-plugin/plugin.json` — name `kinadesy-skills`, `skills: "./skills/"` so future skills are included with no manifest edit. Attribution to Wes Kao in all public-facing copy (`interface.longDescription` + CREDITS.md link). No `apps`/`mcpServers`/`hooks` (none exist). Assets optional — never block a ship on a screenshot.
2. **Marketplace** `.agents/plugins/marketplace.json` — marketplace `kinadesy`, one plugin, `policy.installation: "INSTALLED_BY_DEFAULT"` so `codex plugin marketplace add kinantid/skills` is a one-command install (verify in test). No `authentication` field — nothing to authenticate.
3. **Test first, not last**: local marketplace add → fresh session → `$refine` explicit + implicit trigger, both CLI and ChatGPT app. Re-test from GitHub after push. Also verify progressive disclosure (does Codex read `principles/*.md` on demand?).
4. **Website `/skills`**: hard-coded single page. Codex command first (native path), `npx` second, copy buttons, one-sentence path distinction, "pick one path" dual-install note, Wes Kao credit.
5. **Clean-machine dry run** of the exact slide commands.

## Phase 2 — platform backlog (KIN-116 … KIN-121; revisit at skill #3)

- CI validation: SKILL.md frontmatter, unique names, manifest validity, version-bump-on-change, no `.DS_Store`/`voice/VOICE.md` in tree (KIN-116)
- CHANGELOG + git tags; pin the marketplace `ref` to tags once real users exist. Adding a skill = minor bump, fixes = patch. (KIN-117)
- Website `/skills/[slug]` routes + build-time skill index from frontmatter, with a small site-metadata overlay file (KIN-118)
- `install.sh --agent codex|claude|all` targeting `~/.agents/skills` and `~/.claude/skills` (KIN-119)
- Plugin assets: composerIcon, logo, screenshots, brandColor (KIN-120)
- Retire the private communication-refinement fork once refine + `voice/VOICE.md` proves out on real drafts (KIN-121)

## Standing decisions

- **`ref: main` until real users exist** — hotfix freedom beats release hygiene pre-launch; flip to tag-pinning with the first external users (KIN-117).
- **Plugin releases are cached copies**: new skills reach existing plugin users only after a version bump + `codex plugin marketplace upgrade` + a fresh session. Document this, don't fight it.
- **Dual-install collision**: installing via both `npx skills add` (→ `~/.agents/skills/`) and the plugin gives Codex the skill twice. The website says: pick one path.
- **Attribution is non-negotiable** on every public surface: the ideas are Wes Kao's (and other credited authors'); we restate in original wording, link sources, and never present the frameworks as ours. See `CREDITS.md` and `NOTICE`.
- **Voice docs never ship**: `voice/VOICE.md` is gitignored; only `voice/VOICE.template.md` is distributed. Plugin bundles and `npx` installs therefore always carry the clean template.

## History

- 2026-07-12: plan reviewed and split into meetup vs platform phases; original full plan (single-shot: plugin + CI + changelog + data-driven website) deemed two plans stapled together — platform work deferred to skill #3 scale.
