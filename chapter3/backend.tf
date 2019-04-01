terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-hibriiiiidge"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
    shared_credentials_file = "/Users/yasunoritakahashi/.aws/credentials"
    profile = "takahashi"
  }
}