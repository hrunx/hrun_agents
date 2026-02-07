# Post-Deploy Monitoring

## Purpose
Provide a concrete monitoring checklist and what to do if things go wrong.

## When to use
Use after deploy or when planning a deploy.

## Inputs required
- Services changed
- Observability tools available

## Method
1. List key dashboards/log queries to watch (if tools exist).
2. List error rate/latency indicators.
3. List sanity checks users should try.
4. Define rollback triggers.

## Output format
Return:
- **Monitoring checklist (15–60 min)**
- **Sanity checks**
- **Rollback triggers**
- **Incident notes**

## Checklists
### Ops
- Monitoring is specific and actionable
- Rollback triggers are concrete

## Verification
If tools aren’t configured, propose minimal logging/metrics to add.
