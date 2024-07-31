provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"
  acl = "public-read-write"
  tags = {
    Environment          = "Dev"
    git_commit           = "d4c35e0270bfd542051278ca30b4b3872c1ae0b2"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-01-26 23:01:56"
    git_last_modified_by = "tprendervill@paloaltonetworks.com"
    git_modifiers        = "tprendervill"
    git_org              = "ced1011"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "ea8464a5-f7cb-4602-8e09-dc9e5d22e3c0"
  }
}


