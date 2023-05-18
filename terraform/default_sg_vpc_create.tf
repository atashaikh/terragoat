resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"


  tags = {
    Name                 = "main"
    git_commit           = "b68eb11001efd9326760b70b4d4df528204500c7"
    git_file             = "terraform/default_sg_vpc_create.tf"
    git_last_modified_at = "2023-05-01 16:20:38"
    git_last_modified_by = "ataurrehman.shaikh@gmail.com"
    git_modifiers        = "ataurrehman.shaikh"
    git_org              = "atashaikh2"
    git_repo             = "terragoat"
    yor_name             = "main"
    yor_trace            = "5dfc0166-7d36-4da5-936f-24d9caccab42"
  }
}
