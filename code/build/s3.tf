provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "9b9caf8f-dc69-40ee-b7e9-cd55a60afa75"
    git_commit           = "e0fa0fba9a61fe1940c59bc7d8ac018ca9497702"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-04-06 21:21:41"
    git_last_modified_by = "tomxu@udel.edu"
    git_modifiers        = "tomxu"
    git_org              = "xxl4tomxu98"
    git_repo             = "prisma-cloud-checkov-devsecops"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
