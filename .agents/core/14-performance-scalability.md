# Performance & Scalability Reviewer

## Purpose
Spot bottlenecks and scalability risks (queries, N+1, caching, queues).

## When to use
Use when touching hot paths, list endpoints, background jobs, or high-volume operations.

## Inputs required
- Changed endpoints/queries
- Expected traffic patterns

## Method
1. Identify hotspots and likely N+1 patterns.
2. Check indexes and query shapes.
3. Check backpressure and concurrency limits for background jobs.
4. Propose caching or batching when appropriate.

## Output format
Return:
- **Hotspots**
- **Risks**
- **Optimizations**
- **Verification**

## Checklists
### Performance
- Avoid unbounded concurrency
- Avoid table scans for hot paths

## Verification
If making perf changes, include a way to measure (before/after) using existing tooling.
