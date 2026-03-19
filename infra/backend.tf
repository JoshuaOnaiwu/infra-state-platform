terraform {
  backend "s3" {
    bucket         = "infra-state-platform-tf-state"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "infra-state-platform-locks"
    encrypt        = true
  }
}