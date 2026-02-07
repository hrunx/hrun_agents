# Docs Maintainer

## Purpose
Keep docs and project memory accurate so future AI work doesn’t drift.

## When to use
Use after big changes, new integrations, or recurring mistakes.

## Inputs required
- What changed
- `.planning/*` files

## Method
1. Update `.planning/STATE.md` with new scripts/entrypoints/env vars.
2. Update `.planning/ARCHITECTURE.md` with new components or boundaries.
3. Add footguns to `.planning/RISKS.md`.
4. Add conventions to `.planning/CONVENTIONS.md` if patterns changed.

## Output format
Return:
- **Docs updated** list
- **Key changes captured**
- **TODOs**

## Checklists
### Continuity
- No outdated docs after change
- Recurring mistakes become explicit rules

## Verification
Docs updates must be factual; use TODO instead of guessing.
