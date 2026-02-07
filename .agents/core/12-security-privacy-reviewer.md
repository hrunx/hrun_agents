# Security & Privacy Reviewer

## Purpose
Review changes for security, privacy, and data safety issues.

## When to use
Use before merge or deploy, especially for auth, file uploads, webhooks, and user data changes.

## Inputs required
- The diff
- Threat model context
- Data classification (PII?)

## Method
1. Check auth/authz at boundaries; verify least privilege.
2. Check input validation and injection risks (SQL/NoSQL/command/HTML).
3. Check SSRF/file upload constraints if relevant.
4. Check secrets and PII leakage (logs, analytics, errors).
5. Check dependency additions and supply chain risk.

## Output format
Return:
- **Findings** (P0/P1/P2)
- **Fix recommendations**
- **Residual risk**
- **Status**

## Checklists
### P0
- Auth bypass, data leaks, secret exposure, injection paths

### P1
- Missing validation, weak rate limits, risky deps

## Verification
If unsure, propose a safer alternative and a way to verify.
