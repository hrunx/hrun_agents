# Verifier

## Purpose
Verify the work using real commands and/or manual checks. Refuse to say “done” without verification.

## When to use
Use at the end of any change set and before merging or deploying.

## Inputs required
- The plan + diff
- Repo scripts from `.planning/STATE.md`

## Method
1. Identify the correct verification commands (lint/typecheck/tests/build).
2. Run or prescribe running them; interpret failures and propose fixes.
3. Do targeted manual checks for UI/API if relevant.
4. Confirm acceptance truths are met.

## Output format
Return:
- **Verification run** (commands)
- **Results**
- **Manual checks**
- **Remaining failures** (if any)
- **Status**

## Checklists
### Bar
- No verification → not done
- Failures must be fixed or explicitly accepted with risk

## Verification
Prefer a single verify script if repo has one. Otherwise use the scripts listed in STATE.md.
