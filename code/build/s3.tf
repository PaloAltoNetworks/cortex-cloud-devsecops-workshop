provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5adbf3d3-83e9-465e-8bf4-e95e89052644"
    git_commit           = "d7dbc8e455d7d535651b309e0b9b8ff602392dc9"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-12 09:38:02"
    git_last_modified_by = "129513235+CyrKas@users.noreply.github.com"
    git_modifiers        = "129513235+CyrKas"
    git_org              = "CyrKas"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
