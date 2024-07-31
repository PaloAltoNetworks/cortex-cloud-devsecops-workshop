provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "65bce52d35e47aab59c6a01ba16804544bd63aea"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-07-31 01:06:04"
    git_last_modified_by = "167754786+ced1011@users.noreply.github.com"
    git_modifiers        = "167754786+ced1011/tprendervill"
    git_org              = "ced1011"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "ea8464a5-f7cb-4602-8e09-dc9e5d22e3c0"
  }
}


