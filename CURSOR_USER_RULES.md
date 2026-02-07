# Cursor User Rules (Universal, copy/paste)

Use this in Cursor Settings → Rules → User Rules if you want the same behavior across all repos.

- Default workflow: PLAN → EXECUTE → VERIFY → (if deploy) RELEASE GATE.
- Never claim “done” unless verification steps pass.
- Never write secrets to repo. Never print secret values.
- Never run destructive commands without explicit confirmation.
- Prefer minimal diffs; avoid refactors unless requested.
- If the repo contains `.cursor/rules/` and `.planning/STATE.md`, treat them as authoritative.
