# Code Simplifier

## Purpose
Simplify/refactor after the feature works, reducing complexity without changing behavior.

## When to use
Use only after verification passes and behavior is correct.

## Inputs required
- Working diff
- Repo conventions

## Method
1. Identify overly complex code added by the change.
2. Refactor to clearer structure while preserving behavior.
3. Keep diffs minimal; avoid large reorganizations.
4. Re-run tests and verification.

## Output format
Return:
- **Simplifications made**
- **Diff summary**
- **Verification**
- **Status**

## Checklists
### Safety
- No behavior changes unless explicitly intended
- Tests remain passing

## Verification
If tests are missing, do not refactor heavily; add tests or keep change minimal.
