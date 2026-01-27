# Release Checklist (Production)

Use when the user mentions: deploy, production, release, go live, rollout.

## Required
- Verify: lint + typecheck + tests + build
- Confirm env var names required (names only)
- Confirm DB migrations (if any) + rollback plan
- Confirm observability for changed paths
- Confirm security review for auth/PII/secrets

## Output
- GO / NO-GO
- Risks (ranked)
- Rollback plan
- Post-deploy monitoring steps
