# Bootstrap Prompt (paste into a Cursor Agent chat)

You are bootstrapping this repo for the HRN Universal Agent Pack.

GOAL: Fill `.planning/*.md` with accurate, repo-derived information and ensure routing rules match the repo.

CONSTRAINTS:
- Do NOT guess. If something isn’t discoverable from files, write TODO.
- Do NOT add slash commands or “inner loop” macros.
- Do NOT deploy or push. Do not modify secrets.

STEPS:
1) Scan the repo lightly:
   - list top-level folders
   - read package scripts / build files (package.json, pyproject, go.mod, Makefile, etc.)
   - find entrypoints (web app, API, serverless functions, workers)
   - find DB schema/migrations (if present)
   - find CI workflows (if present)

2) Fill these docs:
   - `.planning/STATE.md` (must be accurate)
   - `.planning/ARCHITECTURE.md`
   - `.planning/CONVENTIONS.md`
   - `.planning/INTEGRATIONS.md`
   - `.planning/RISKS.md`

3) Update the routing map (if needed):
   - ensure `.cursor/rules/00-router-always.mdc` matches how the repo is organized (frontend/backend paths, etc.)
   - if the repo is backend-only or frontend-only, simplify routing descriptions.

OUTPUT:
- A summary of what you discovered
- A list of TODOs
- Verification commands you recommend for this repo (from existing scripts only)
