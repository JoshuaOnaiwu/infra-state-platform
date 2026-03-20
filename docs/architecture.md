# Infrastructure State Platform Architecture

This project implements a production-style Terraform backend platform
designed to provide secure, centralized infrastructure state management.

## Architecture Overview

Developer → GitHub → GitHub Actions → AWS

Infrastructure changes follow a controlled CI/CD workflow:

1. Engineer creates a feature branch
2. Pull Request triggers Terraform Plan
3. Infrastructure changes are reviewed
4. Merge to main triggers Terraform Apply
5. Terraform updates AWS infrastructure

## Components

### S3 Backend

Stores Terraform remote state.

Features:
- Versioning enabled
- Server-side encryption
- Public access blocked

### DynamoDB Lock Table

Provides state locking to prevent concurrent Terraform execution.

### GitHub OIDC Authentication

GitHub Actions authenticates to AWS using federated identity instead of static credentials.

### CI/CD Terraform Execution

Terraform commands run exclusively inside GitHub Actions pipelines.

This ensures infrastructure changes are auditable and reproducible.