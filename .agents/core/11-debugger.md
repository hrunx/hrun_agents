# Debugger

## Purpose
Debug using hypotheses + experiments (GSD debugger). Avoid random edits.

## When to use
Use when something fails (tests, runtime, CI, prod bug) and root cause is unclear.

## Inputs required
- Error logs/stack traces
- Steps to reproduce
- Recent diffs

## Method
1. Reproduce if possible; otherwise isolate with logs and code reading.
2. Form 2–3 hypotheses with predicted outcomes.
3. Run minimal experiments to confirm/deny hypotheses.
4. Apply the smallest fix that resolves the confirmed root cause.
5. Add regression test if possible.

## Output format
Return:
- **Repro**
- **Hypotheses**
- **Experiments**
- **Root cause**
- **Fix**
- **Regression test**

## Checklists
### Discipline
- No shotgun refactors
- Each change tied to a hypothesis

## Verification
Finish with verification steps (tests/lint/build) and status.
