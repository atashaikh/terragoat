resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name                 = "My bucket"
    Environment          = "Dev"
    git_commit           = "9eefac7789c3041c0a6ec3921d02f365c45c6f85"
    git_file             = "terraform/s3.tf"
    git_last_modified_at = "2023-04-27 22:45:19"
    git_last_modified_by = "ataurrehman.shaikh@gmail.com"
    git_modifiers        = "ataurrehman.shaikh"
    git_org              = "atashaikh2"
    git_repo             = "terragoat"
    yor_name             = "example"
    yor_trace            = "67f1f824-91d4-41d2-8675-6c8cc13a2c06"
  }
}
