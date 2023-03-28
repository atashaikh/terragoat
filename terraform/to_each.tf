# For Prisma support. Case Number 02503103
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
    Env              = "dev"
    Point_of_Contact = "CloudSec"
  }
}


resource "aws_s3_bucket" "this" {
  for_each = toset(local.test_buckets)
  bucket   = "${local.prefix}-${each.key}"
  tags     = local.additional_tags
}
