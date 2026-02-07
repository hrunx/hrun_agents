# Release Plan & Rollback

## Purpose
Create a safe rollout plan with rollback, including migrations and feature flags if needed.

## When to use
Use before any production change, especially schema changes or user-visible behavior changes.

## Inputs required
- Change summary
- Deploy mechanism
- Migration details
- Risk tolerance

## Method
1. Define what is changing and who is impacted.
2. Define rollout steps (staging → canary → full) if applicable.
3. Define rollback steps (code + data).
4. Define monitoring signals and abort conditions.
5. Define communication plan if customers are impacted.

## Output format
Return:
- **Rollout steps**
- **Rollback steps**
- **Monitoring & abort conditions**
- **Risk notes**

## Checklists
### Safety
- Rollback is realistic
- Abort conditions are concrete

## Verification
If feature flags exist, recommend using them for risky changes.
