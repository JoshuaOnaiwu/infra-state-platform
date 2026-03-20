# ADR-001: Terraform Remote State Backend

## Status
Accepted

## Context

Terraform state must be shared across environments and protected
from concurrent modifications.

Local state files create risk of corruption and lack auditability.

## Decision

Use AWS S3 as the Terraform remote state backend with DynamoDB
for state locking.

## Consequences

Advantages:

- Centralized state management
- Safe concurrent Terraform execution
- State versioning via S3
- Secure access through IAM

Tradeoffs:

- Requires bootstrap infrastructure
- Backend configuration must remain static