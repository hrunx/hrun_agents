# Bootstrap Prompt (run once per repo)

Copy/paste the text below into a **new Cursor Agent chat** at repo root:

---
You are setting up this repo to be worked on safely by a solo developer using AI.
Your job: fill and correct the project memory files in `.planning/` and ensure the Cursor rules and agents make sense for THIS repo.

Constraints:
- Do not invent stack details. Read the repo.
- Prefer TODOs over guessing.
- Do not add slash commands or macro systems.
- Do not change product behavior unless asked.

Tasks:
1) Read `.planning/STATE.md`, `.planning/ARCHITECTURE.md`, `.planning/CONVENTIONS.md`, `.planning/INTEGRATIONS.md`, `.planning/RISKS.md`, `.planning/VERIFICATION.md`.
2) Scan the repo to determine:
   - package manager / build tools
   - entrypoints (frontend, backend, workers, serverless)
   - databases and migrations
   - how to run locally
   - how to test / lint / typecheck / build
   - key environment variable names (names only)
   - observability, queues, schedulers
3) Update `.planning/*` with accurate info (leave TODO if uncertain).
4) Update `AI_RULES.md` and `AGENTS.md` with the real commands and invariants.
5) Output:
   - what you updated
   - exact commands to run to verify
   - top 5 repo-specific “footguns” added to RISKS.md

Finish with: “✅ Bootstrap complete”.
---
