# Solo AI Ops Pack (Cursor-ready)
A reusable, project-agnostic “AI team” setup inspired by:
- Boris’s Claude Code workflow (parallel roles + shared repo memory + verification loop)
- get-shit-done (planner → plan-checker → executor → verifier + research + debugger)

## What you get
- `.cursor/rules/` (Cursor Rules, including an Always-on Router that auto-selects relevant guidance)
- `.cursor/agents/` (Cursor Subagents: planner/checker/executor/verifier/debugger/etc.)
- `.cursor/skills/` (Cursor Skills: bootstrap, verify, release gate, capture footguns)
- `.agents/` (role playbooks; the Router will open these automatically based on your request)
- `.planning/` (project memory templates the agent fills once and maintains)
- `AI_RULES.md` + `AGENTS.md` (tool-agnostic repo-level rules)

## Install (per repo)
1) Copy this pack into the **repo root** (so `.cursor/*` sits at repo root).
2) Commit the new files (recommended).
3) Open Cursor in this repo.
4) Run the “Bootstrap prompt” from `BOOTSTRAP_PROMPT.md` once.
5) From then on, just talk naturally:
   - “change the frontend…” → Frontend specialist guidance loads
   - “add an API…” → Backend specialist guidance loads
   - “deploy to prod…” → Production release gate becomes mandatory

### Install via git (recommended)

Option A — subtree (keeps pack as a folder you can update):

```bash
git subtree add --prefix=hrun_agents_pack https://github.com/hrunx/hrun_agents.git main --squash
rsync -a hrun_agents_pack/ ./
```

Option B — clone + copy:

```bash
git clone https://github.com/hrunx/hrun_agents.git /tmp/hrun_agents
rsync -a /tmp/hrun_agents/ ./
```

After install: restart Cursor (skills/subagents are auto-discovered from `.cursor/agents/` and `.cursor/skills/`).

## Parallel workflow (solo-team pattern)
Use multiple Cursor chats, each with a role:
- Chat A: Planner (produces plan + acceptance truths)
- Chat B: Executor (only one chat should edit code on a branch)
- Chat C: Verifier (tests/commands, edge cases)
- Chat D: Security/Release Gate (GO/NO-GO + rollback + monitoring)

Tip: If you want true parallel coding, use separate branches/worktrees per chat/window.

## No slash commands
This pack avoids slash commands / macro “inner-loop” systems.
