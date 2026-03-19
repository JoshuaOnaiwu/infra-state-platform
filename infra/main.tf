resource "aws_s3_bucket" "demo_bucket" {
  bucket = "winters-demo-dev-infra-bucket-2026-01"

  tags = {
    ManagedBy   = "Terraform"
    Environment = "dev"
  }
}