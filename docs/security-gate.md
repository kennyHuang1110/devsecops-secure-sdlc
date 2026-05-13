# Security Gate Policy

| Severity | Policy |
|---|---|
| Critical | Block |
| High | Block or Review |
| Medium | Review |
| Low | Accept / Track |

## Default Rule

```text
Critical > 0 = Fail
High > 5 = Fail
