---
name: verify-changes
description: Run the repo’s verification gates (lint/typecheck/tests/build) using .planning/VERIFICATION.md and summarize results.
---

# Verify Changes

## When to use
- Use after making code changes.
- Use before creating a PR or release decision.

## Instructions (step-by-step)
1) Read `.planning/VERIFICATION.md`.
2) Determine which surface changed:
   - frontend (React/Next pages/components)
   - backend (API routes, DB, jobs)
   - infra (docker-compose, deployment scripts)
3) Select the **minimum** command set for the touched surface(s), typically:
   - lint
   - typecheck (if TS)
   - unit tests
   - build
4) Run the commands.
5) If any command fails:
   - capture the error output
   - identify the root cause
   - apply the minimal fix
   - re-run the failed command(s)
6) If you cannot run commands (permissions/tooling), list the **exact** commands the user should run.

## Output format

## Verification Report
- **Commands run (or to run):**
- **Results:** PASS/FAIL + notes
- **Remaining issues / follow-ups:**
