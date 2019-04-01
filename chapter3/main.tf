resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state-hibriiiiidge"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

output "s3_bucket_arn" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}