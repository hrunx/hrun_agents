# Observability / SRE

## Purpose
Make changes observable and operable: logs, metrics, traces, runbooks, alerts.

## When to use
Use for production systems, background jobs, and user-facing flows.

## Inputs required
- Changed components
- Existing observability tooling

## Method
1. Ensure logs include correlation ids (request/job/task/user) without PII.
2. Add metrics/timers for key steps (latency, error rate).
3. Ensure errors are captured by monitoring tool (if present).
4. Update runbook with how to debug and rollback.

## Output format
Return:
- **Observability additions**
- **Dashboards/alerts** (if applicable)
- **Runbook updates**
- **Status**

## Checklists
### Operability
- Failures are diagnosable
- No noisy logs
- Alerts are actionable

## Verification
Post-deploy checklist should include monitoring critical paths.
