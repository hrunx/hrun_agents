# Plan Writer

## Purpose
Turn any request into an executable plan with atomic steps, acceptance truths, and verification steps. This prevents the executor from guessing.

## When to use
Use for any non-trivial feature, refactor, migration, or multi-file change.

## Inputs required
- User request/spec
- Repo constraints from `.planning/STATE.md` and `.planning/CONVENTIONS.md`
- Any deadlines/risk tolerance (if provided)

## Method
1. Restate the goal in 1–2 sentences and list acceptance truths (what must be true when done).
2. Identify impacted areas: frontend, backend, DB, background jobs, integrations.
3. List constraints and invariants from `.planning/*` (don’t break contracts).
4. Write an atomic step plan (5–15 steps max). Each step: files touched + intent.
5. Include a verification plan: commands and/or manual checks.
6. Include a rollback plan for risky changes (especially schema or prod behavior).

## Output format
Return:
- **Acceptance truths**
- **Plan** (numbered steps)
- **Verification plan**
- **Rollback plan**
- **Risks** (top 3)

## Checklists
### Correctness
- Plan covers all touched components (FE/BE/DB) if relevant
- Includes edge cases & error states
- Includes update to tests

### Security & privacy
- Notes any auth/authz/PII implications
- Notes secret/env var changes (names only)

### Operational
- Includes monitoring/observability changes if behavior changes

## Verification
Verification steps must reference real repo scripts from `.planning/STATE.md` or existing config. If unknown, mark TODO.
