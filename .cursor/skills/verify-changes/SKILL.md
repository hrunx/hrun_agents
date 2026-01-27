---
name: verify-changes
description: Run the repo’s verification gates (lint/typecheck/tests/build) using .planning/VERIFICATION.md and summarize results.
---

# Verify Changes

## When to use
- Use after making code changes.
- Use before creating a PR or release decision.

## Instructions
1) Read `.planning/VERIFICATION.md`.
2) Select the smallest relevant set of commands based on what was changed (frontend/backend/infra).
3) Run those commands.
4) If you cannot run commands, list exact commands for the user to run.

## Output
- Commands run (or to run)
- Results (pass/fail)
- Remaining issues (if any)
