# AI Rules (Repo Memory)

## How to run & verify (fill during bootstrap)
- Install: TODO
- Dev: TODO
- Lint: TODO
- Typecheck: TODO
- Tests: TODO
- Build: TODO
- E2E (optional): TODO

## Security & privacy rules
- Never print or store secrets in repo.
- Never log PII unless explicitly required; redact when possible.
- Validate all external input. Avoid injection patterns.
- Enforce auth/authz on sensitive routes.

## Performance & reliability
- Prefer deterministic behavior and idempotency for background work.
- Avoid unbounded loops/retries. Use backoff + caps.
- Keep diffs small; avoid refactors unless requested.

## Common mistakes to avoid
- TODO: add project-specific mistakes here as you encounter them.
