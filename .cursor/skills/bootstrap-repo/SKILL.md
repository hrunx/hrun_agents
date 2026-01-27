---
name: bootstrap-repo
description: Bootstrap a repo for safe AI work by filling .planning/*, AI_RULES.md, and AGENTS.md from real repo evidence.
---

# Bootstrap Repo

## When to use
- Use when setting up a new repository to be worked on by Cursor Agent.
- Use when `.planning/*` contains TODOs or is missing.

## Instructions
1) Read `.planning/STATE.md`, `.planning/ARCHITECTURE.md`, `.planning/CONVENTIONS.md`, `.planning/INTEGRATIONS.md`, `.planning/RISKS.md`, `.planning/VERIFICATION.md`.
2) Scan the repo to determine:
   - package manager / build tools
   - entrypoints (frontend, backend, workers, serverless)
   - databases and migrations
   - how to run locally
   - how to test / lint / typecheck / build
   - key environment variable names (names only)
   - observability, queues, schedulers
3) Update `.planning/*` with accurate info (leave TODO if uncertain; do not invent).
4) Update `AI_RULES.md` and `AGENTS.md` with the real commands and invariants.
5) Add top 5 repo-specific footguns to `.planning/RISKS.md`.

## Output
- What you updated
- Exact commands to run to verify
- “✅ Bootstrap complete”
