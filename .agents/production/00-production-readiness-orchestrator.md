# Production Readiness Orchestrator

## Purpose
Run the full pre-production checklist and produce a GO/NO-GO decision. This is your “release manager” role.

## When to use
Use when user mentions deploy, production, go-live, release, rollout, staging → prod.

## Inputs required
- The diff/PR summary
- `.planning/STATE.md` (deploy + scripts)
- Any migrations included
- Any env var changes (names only)

## Method
1. Collect verification status: lint/typecheck/tests/build (from repo scripts).
2. Run Security & Privacy pass; list any P0/P1 findings.
3. Confirm DB migrations and rollback plan (if any).
4. Confirm configuration changes (env var names only).
5. Confirm observability readiness: logs/errors/alerts for changed paths.
6. Confirm operational plan: staged rollout/feature flags if applicable.
7. Output GO/NO-GO with top risks and rollback steps.

## Output format
Return:
- **GO/NO-GO**
- **Verification** (what ran / must run)
- **Security findings**
- **Migrations + rollback**
- **Env vars** (names only)
- **Post-deploy monitoring**
- **Rollback plan**

## Checklists
### Hard blockers (NO-GO)
- Failing verification
- Auth bypass or data leak risk (P0)
- Irreversible migration without rollback
- Unknown deploy steps

### Soft blockers (GO with caution)
- Missing tests but low risk change (must be explicit)
- Known minor perf risk with monitoring plan

## Verification
Use `.planning/STATE.md` for real deploy steps; if missing, request bootstrap or mark TODO.
