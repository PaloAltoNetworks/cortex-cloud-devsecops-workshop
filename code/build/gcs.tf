provider "google" {
  project = "qwiklabs-gcp-03-fa7edfd03d8e"
  region  = "us-central1"
}

resource "google_storage_bucket" "Example" {
  name          = "demo2-${random_id.Rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false

  labels = {
    git_commit           = "1312da753697eb030b8914b7b192b1a81d0b8fc5"
    git_file             = "code__build__gcs_tf"
    git_last_modified_at = "2025-08-18-07-06-33"
    git_last_modified_by = "52453932danielma911"
    git_modifiers        = "52453932danielma911"
    git_org              = "danielma911"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "Example"
    yor_trace            = "f1afb72e-2fec-49e9-bd3f-03fef6f3075a"
  }
}

resource "random_id" "Rand_suffix" {
  byte_length = 4
}

output "Bucket_name" {
  value = google_storage_bucket.Example.name
}
