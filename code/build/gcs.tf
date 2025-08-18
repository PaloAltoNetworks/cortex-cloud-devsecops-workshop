

provider "google" {
  project = "qwiklabs-gcp-03-fa7edfd03d8e"
  region  = "us-central1"
}

resource "google_storage_bucket" "Example" {
  name          = "demo2-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false
  labels = {
    git_commit           = "df26f6387e78caaf4058087dbd184925a1918234"
    git_file             = "code__build__gcs_tf"
    git_last_modified_at = "2025-08-18-07-03-37"
    git_last_modified_by = "52453932danielma911"
    git_modifiers        = "52453932danielma911"
    git_org              = "danielma911"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "Example"
    yor_trace            = "08b38d2b-6def-409e-bbbd-b41165251c1e"
  }
}

resource "random_id" "Rand_suffix" {
  byte_length = 4
}

output "Bucket_name" {
  value = google_storage_bucket.example.name
}
