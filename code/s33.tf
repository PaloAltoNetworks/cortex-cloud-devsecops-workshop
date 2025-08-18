provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "46510630-5abb-42ff-9093-1ba6316afb99"
    git_commit           = "d45bb668208a5be396137f91008a9bcc52921522"
    git_file             = "code/s33.tf"
    git_last_modified_at = "2025-08-13 01:34:25"
    git_last_modified_by = "52453932+danielma911@users.noreply.github.com"
    git_modifiers        = "52453932+danielma911"
    git_org              = "danielma911"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
