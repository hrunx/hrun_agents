# HRN Universal Solo-Dev Agent Pack (Cursor)

This pack gives you a **repeatable “AI team” workflow** you can drop into *any* repo:
- Strong defaults (plan → implement → verify → release gate)
- File-based specialist roles (like Boris’ Claude Code subagents)
- GSD-style roles: plan-writer, plan-checker, executor, verifier, integration-checker, debugger
- Cursor-native rules that automatically route your request to the right specialist

## Quick install
1) Unzip this folder into your repo root (so `.cursor/`, `.agents/`, `.planning/` exist).
2) Commit the files.
3) Run the bootstrap once (see `BOOTSTRAP_PROMPT.md`) to fill `.planning/*.md` with the **actual project details**.

After bootstrap:
- You can talk normally in Cursor.
- The Router rules will automatically apply the right specialists (frontend/backend/security/release/etc.).
- You do **not** need to remember any file names.

## How it works
- `.cursor/rules/00-router-always.mdc` is always injected into the agent context.
- It forces the agent to:
  - read `.planning/STATE.md`
  - detect your intent (frontend/backend/db/agent-system/deploy/security)
  - load and follow the relevant specialist rules + role files automatically.

## What you customize per repo
You only need to customize the `.planning/` docs (usually by running the bootstrap prompt):
- `.planning/STATE.md` – the “current truth” of the project (scripts, entrypoints, env vars, deploy).
- `.planning/ARCHITECTURE.md` – boundaries and major components.
- `.planning/CONVENTIONS.md` – how to code here.
- `.planning/INTEGRATIONS.md` – external services.
- `.planning/RISKS.md` – known footguns.

Optional:
- Copy `.templates/github/workflows/verify.yml` into `.github/workflows/verify.yml` if you want a CI gate.
- Add a repo-specific `./scripts/verify` if you want a single verification command (recommended).

## Parallel workflows (recommended)
Use multiple Cursor chats as “team members”:
- Chat A: Plan Writer
- Chat B: Executor (ONLY one that edits code at a time)
- Chat C: Verifier / Test Engineer
- Chat D: Security / Production Release Gate

See `PARALLEL_WORKFLOW.md`.

## Files
- `.cursor/rules/` – Cursor rules (auto-routing + gates)
- `.agents/` – role files (specialists + checklists)
- `.planning/` – project memory that agents must read
- `.templates/` – optional CI/verify templates
