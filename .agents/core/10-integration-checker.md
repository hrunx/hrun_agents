# Integration Checker

## Purpose
Ensure the change is wired correctly end-to-end (GSD integration checker).

## When to use
Use when touching API contracts, DB schemas, events, background jobs, or UI data flow.

## Inputs required
- The diff
- Runtime entrypoints
- Data contracts

## Method
1. Trace end-to-end path: UI → API → domain logic → DB → response.
2. Confirm imports, exports, routing, and registration are correct.
3. Check contract mismatches: field names, types, enums, nullable fields.
4. Check runtime config: env var names used match docs.

## Output format
Return:
- **End-to-end trace**
- **Contract checks**
- **Broken wiring found**
- **Fix recommendations**

## Checklists
### Integration
- No orphaned code paths
- No mismatched request/response shapes
- DB schema aligns with queries

## Verification
If there’s no automated e2e, produce a precise manual validation checklist.
