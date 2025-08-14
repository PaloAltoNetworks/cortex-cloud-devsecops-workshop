provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a734b8b4-e4eb-484c-a0ec-515a58ded11f"
    git_commit           = "941f5d2e060d66a2552c37c6361e21deecfc06f5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 16:31:10"
    git_last_modified_by = "supriya.uppalapati@gmail.com"
    git_modifiers        = "supriya.uppalapati"
    git_org              = "supriyawishesu"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
