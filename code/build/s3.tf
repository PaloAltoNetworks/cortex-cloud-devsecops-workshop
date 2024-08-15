provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "13eebba0-39d1-48ed-8aa9-2a1f47a6a36c"
    git_commit           = "99a9cb3b30965b153272816ff0a0ec1486729d37"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-08-14 16:27:00"
    git_last_modified_by = "102175283+dima999572@users.noreply.github.com"
    git_modifiers        = "102175283+dima999572"
    git_org              = "dima999572"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
