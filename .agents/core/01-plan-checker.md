# Plan Checker

## Purpose
Critique a proposed plan, find missing steps, hidden risks, and verification gaps (GSD-style).

## When to use
Use after the Plan Writer, before any coding starts.

## Inputs required
- The draft plan
- `.planning/STATE.md` constraints
- Any prod constraints (SLOs, costs)

## Method
1. Check for missing impacted areas (FE/BE/DB) and missing file edits.
2. Check for missing verification steps or missing tests.
3. Check for backward compatibility and rollout/rollback.
4. Check for security/privacy risks and missing mitigations.
5. Rewrite the plan with fixes (keep it executable and atomic).

## Output format
Return:
- **Issues found** (bullets)
- **Improved plan** (numbered)
- **Extra verification**
- **Risk mitigations**

## Checklists
### Plan quality
- Atomic, ordered steps
- Clear file touch points
- No ambiguous “do stuff” steps

### Safety
- No risky operations without explicit confirmation
- Includes rollback where needed

## Verification
Ensure the plan ends with verification (lint/typecheck/tests/build) and, if shipping, a release gate checklist.
