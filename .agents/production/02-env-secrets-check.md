# Env & Secrets Audit

## Purpose
Ensure environment configuration is safe and complete for production.

## When to use
Use when new integrations or env vars are introduced.

## Inputs required
- List of env vars referenced in code
- Deployment environment info (if documented)

## Method
1. Scan for new env var usage and ensure names are documented in STATE.md.
2. Ensure server-only secrets are not used client-side.
3. Ensure defaults are safe (fail closed or feature disabled).
4. List required keys by name only.

## Output format
Return:
- **Secrets to add** (names only)
- **Client vs server exposure risks**
- **Missing docs**
- **Status**

## Checklists
### P0
- Secret exposed to browser bundle
- Secret printed to logs

## Verification
Never output values. Only key names.
