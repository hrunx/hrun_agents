# Agents (Role Files)

These are “specialist roles” inspired by:
- Boris’ Claude Code workflow (file-based team memory + verification loop)
- Get-Shit-Done (planner/checker/executor/verifier/integration/debugger)

## You do NOT need to remember file names
The Cursor Router rule (`.cursor/rules/00-router-always.mdc`) will automatically load the right role file(s) based on your request.

## Recommended flow
- Plan Writer → Plan Checker → Executor → Verifier → Integration Checker
- Security Reviewer for anything touching auth/data
- Production orchestrator when deploying

## Files
- `core/` – day-to-day roles
- `production/` – shipping & operational gates
