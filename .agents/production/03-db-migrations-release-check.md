# DB Migration Release Check

## Purpose
Validate migration safety for production deploys.

## When to use
Use when schema or data migrations are included.

## Inputs required
- Migration files
- Current production size assumptions (if known)

## Method
1. Check for destructive operations (drops, rewrites) and require explicit approval.
2. Check for locking/long-running operations and propose safe alternatives.
3. Define rollback and backout plan.
4. Define smoke queries and verification post-migration.

## Output format
Return:
- **Migration risk assessment**
- **Rollback**
- **Smoke checks**
- **Status**

## Checklists
### P0
- Destructive migration with no rollback
- Likely long locks on large tables

## Verification
If production size unknown, assume worst-case and recommend conservative approach.
