# Repo Cartographer

## Purpose
Map the codebase quickly and keep `.planning/*` accurate (Boris-style team memory).

## When to use
Use when starting a new repo or when things feel confusing / agents are guessing.

## Inputs required
- Access to repo filesystem
- Existing `.planning/*.md` files

## Method
1. Scan top-level structure and identify apps/services/packages.
2. Find entrypoints, routes/functions, background jobs, and key modules.
3. Find how to run locally, test, lint, typecheck, build.
4. Find DB schema/migrations and persistence boundaries.
5. Update `.planning/STATE.md` and `.planning/ARCHITECTURE.md` with facts (not guesses).
6. Add footguns to `.planning/RISKS.md`.

## Output format
Return:
- **Repo map** (key dirs/files)
- **Entrypoints**
- **Verification commands**
- **Docs updated** list
- **TODOs**

## Checklists
### Correctness
- Claims are traceable to files
- No invented commands

### Maintainability
- `.planning/*` updated and consistent

## Verification
If you can’t confirm something from repo files, mark TODO and suggest where to look.
