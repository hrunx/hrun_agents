---
name: release-gate
description: Produce a GO/NO-GO release decision using verification, migration/rollback, env var names, monitoring, and security review.
---

# Release Gate

## When to use
- Use when the user mentions deploy/production/release/go live/rollout/staging.

## Instructions (gates)
1) Read `.planning/RELEASE_CHECKLIST.md` and `.planning/VERIFICATION.md`.
2) Run verification (or provide exact commands if you cannot run them):
   - lint → typecheck → tests → build
3) Enumerate **environment variable names** required/changed (names only).
4) Determine whether DB migrations are involved:
   - describe migration steps
   - describe rollback/backout plan
   - describe backfill if needed
5) Security review notes:
   - auth/authz changes
   - secrets/PII logging
   - injection/SSRF/webhooks
6) Observability readiness:
   - logs/metrics for changed paths
   - post-deploy monitoring checklist
7) Output GO/NO-GO.

## Output format (return exactly this)

## Release Decision
- **Decision:** GO | NO-GO
- **Target:** staging | production

### Verification summary
- Lint:
- Typecheck:
- Tests:
- Build:

### Env var names (names only)
- Added:
- Changed:

### Migrations / rollback
- Migrations:
- Rollback:

### Risks (ranked)
- P0:
- P1:

### Post-deploy monitoring
- [ ] ...
