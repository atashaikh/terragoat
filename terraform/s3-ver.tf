locals {
  prefix = "kevin-code-sec"
  buckets = [
    "test-code-sec-a",
    "test-code-sec-b",
  ]
  test_buckets = [
    "test-bucket1",
    "test-bucket2"
  ]
  additional_tags = {
    Env                  = "DEV"
    Point_of_Contact     = "CloudSec"
    Managed_by_Terraform = true
  }
}


resource "aws_s3_bucket" "this" {
  for_each = toset(local.test_buckets)
  bucket   = "${local.prefix}-${each.key}"
  tags     = local.additional_tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id


  versioning_configuration {
   status = "Enabled"
  }
}



