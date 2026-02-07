# Parallel Workflow in Cursor (Solo-Dev “AI Team”)

You can approximate Boris’ “5 parallel Claude sessions” using multiple Cursor chats.

## Golden rule
Only **one** chat should actively write code to the same branch at a time.
Parallelize planning, review, verification, and research.

## Suggested chat roles
1) Planner (Plan Writer)
- Produces acceptance truths + step-by-step plan + test plan + rollback.

2) Executor (Implementer)
- Implements the plan in small diffs.
- Updates tests.
- Runs verification steps.

3) Verifier / QA
- Tries to break the change.
- Runs tests, checks edge cases, validates wiring.

4) Security / Privacy
- Reviews for auth/authz, injection, secrets, PII logging.

5) Release Manager (when shipping)
- Runs production gate checklist.
- Provides GO/NO-GO + rollback + post-deploy monitoring.

## When to use real parallel coding
If you truly need two coding streams (e.g., frontend + backend in parallel):
- use separate branches (or worktrees) to avoid collisions
- merge once both sides pass verification
