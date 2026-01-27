# Repository Guidelines (AGENTS.md)

## Workflow
1) PLAN: restate goal + acceptance truths + impacted areas + step plan + rollback note
2) EXECUTE: implement in small diffs
3) VERIFY: run repo verification commands (see `.planning/VERIFICATION.md`)
4) RELEASE GATE: if “production/deploy/release” is mentioned, run production checklist

## Non-negotiables
- Do not guess stack details; read the repo.
- Do not invent APIs, tables, or env vars.
- Do not log secrets or PII.
- No destructive changes without explicit confirmation.

## Truth lives in
- `.planning/STATE.md` (current reality)
- `.planning/RISKS.md` (footguns)
