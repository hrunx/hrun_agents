# Solo AI Ops Pack (Cursor-ready)
A reusable, project-agnostic “AI team” setup inspired by:
- Boris’s Claude Code workflow (parallel roles + shared repo memory + verification loop)
- get-shit-done (planner → plan-checker → executor → verifier + research + debugger)

## What you get
- `.cursor/rules/` (Cursor Rules, including an Always-on Router that auto-selects relevant guidance)
- `.agents/` (role playbooks; the Router will open these automatically based on your request)
- `.planning/` (project memory templates the agent fills once and maintains)
- `AI_RULES.md` + `AGENTS.md` (tool-agnostic repo-level rules)

## Install (per repo)
1) Unzip this pack into the **repo root**.
2) Commit the new files (recommended).
3) Open Cursor in this repo.
4) Run the “Bootstrap prompt” from `BOOTSTRAP_PROMPT.md` once.
5) From then on, just talk naturally:
   - “change the frontend…” → Frontend specialist guidance loads
   - “add an API…” → Backend specialist guidance loads
   - “deploy to prod…” → Production release gate becomes mandatory

## Parallel workflow (solo-team pattern)
Use multiple Cursor chats, each with a role:
- Chat A: Planner (produces plan + acceptance truths)
- Chat B: Executor (only one chat should edit code on a branch)
- Chat C: Verifier (tests/commands, edge cases)
- Chat D: Security/Release Gate (GO/NO-GO + rollback + monitoring)

Tip: If you want true parallel coding, use separate branches/worktrees per chat/window.

## No slash commands
This pack avoids slash commands / macro “inner-loop” systems.
