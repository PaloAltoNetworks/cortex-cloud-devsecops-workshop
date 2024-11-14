provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "92d76b28-5986-4ffd-8cb5-c3a0b81a7cc7"
    git_commit           = "79a01b0eaf09fe3fca43d023e89a42c0d8796586"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-14 00:53:45"
    git_last_modified_by = "102488600+eugwind@users.noreply.github.com"
    git_modifiers        = "102488600+eugwind"
    git_org              = "eugwind"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
