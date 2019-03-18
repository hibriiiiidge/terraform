provider "aws" {
  region = "us-east-1"
}

resourse "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true   
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}