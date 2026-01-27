# Agents (Role Playbooks)

You don’t need to remember filenames.
The Router rule will open the relevant playbook automatically.

Typical flows:
- Feature: Plan Writer → Plan Checker → Executor → Verifier → Integration Checker → (Security) → (Release)
- Bugfix: Debugger → Executor → Verifier
- Deploy: Release Manager + Security Reviewer + Verification Gate
