---
name: release-gate
description: Produce a GO/NO-GO release decision using verification, migration/rollback, env var names, monitoring, and security review.
---

# Release Gate

## When to use
- Use when the user mentions deploy/production/release/go live/rollout/staging.

## Instructions
1) Read `.planning/RELEASE_CHECKLIST.md` and `.planning/VERIFICATION.md`.
2) Ensure lint/typecheck/tests/build are run (or provide exact commands).
3) Enumerate env var names required (names only).
4) Identify whether DB migrations are involved and provide rollback.
5) Provide observability and post-deploy monitoring checklist.
6) Provide security review notes (auth/authz, secrets/PII, injection/SSRF).

## Output
- GO / NO-GO
- Verification summary
- Risks (ranked)
- Rollback plan
- Post-deploy monitoring steps
