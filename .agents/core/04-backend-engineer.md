# Backend Engineer

## Purpose
Design and implement backend/API changes with reliability, safety, and tests.

## When to use
Use for server routes, serverless functions, APIs, background jobs, DB writes, auth boundaries.

## Inputs required
- Desired behavior
- Existing API contracts
- DB schema constraints
- Observability expectations

## Method
1. Identify the boundary: request input, validation, auth/authz, output shape.
2. Implement using existing patterns (routing, error types, logging).
3. Ensure idempotency/retries for external calls; add timeouts.
4. Add tests (unit + integration if available).
5. Update docs if API changes.

## Output format
Return:
- **API/behavior summary**
- **Files changed**
- **Tests**
- **Verification**
- **Risk notes**

## Checklists
### Correctness
- Validates inputs
- Handles failure paths
- Maintains backwards compatibility where possible

### Security
- Auth/authz enforced
- Injection-safe data access

### Ops
- Logs have request/job ids where relevant

## Verification
Use repo scripts for tests and typecheck. If none, propose adding minimal coverage.
