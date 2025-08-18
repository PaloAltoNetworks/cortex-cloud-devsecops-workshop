

provider "google" {
  project = "qwiklabs-gcp-03-fa7edfd03d8e"
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name          = "demo-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false

  labels = {
    git_commit           = "a799eef73dabfe348bfbb354ff4de7adc4e62c3d"
    git_file             = "code__build__gcs_tf"
    git_last_modified_at = "2025-08-18-06-49-24"
    git_last_modified_by = "52453932danielma911"
    git_modifiers        = "52453932danielma911"
    git_org              = "danielma911"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "example"
    yor_trace            = "f007dac4-d8e4-4b89-89ee-12a1940016a3"
  }
}

resource "random_id" "rand_suffix" {
  byte_length = 4
}

output "bucket_name" {
  value = google_storage_bucket.example.name
}
