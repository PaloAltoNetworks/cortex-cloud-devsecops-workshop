

provider "google" {
  project = qwiklabs-gcp-03-fa7edfd03d8e
  region  = "us-central1"
}

resource "google_storage_bucket" "Example" {
  name          = "demo2-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false
  labels = {
    git_commit           = "c601f9b5e1088e75aa240ece7ec7f72187641151"
    git_file             = "code__build__gcs_tf"
    git_last_modified_at = "2025-08-18-06-43-15"
    git_last_modified_by = "52453932danielma911"
    git_modifiers        = "52453932danielma911"
    git_org              = "danielma911"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "Example"
    yor_trace            = "cf1a1d91-f498-45cb-9167-8b32ce2494ce"
  }
}

resource "random_id" "Rand_suffix" {
  byte_length = 4
}

output "Bucket_name" {
  value = google_storage_bucket.Example.name
}
