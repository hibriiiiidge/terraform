resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state-hibriiiiidge"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-hibriiiiidge"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
    shared_credentials_file = "/Users/yasunoritakahashi/.aws/credentials"
    profile = "takahashi"
  }
}