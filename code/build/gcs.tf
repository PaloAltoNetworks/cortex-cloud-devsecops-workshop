

provider "google" {
  project = qwiklabs-gcp-03-fa7edfd03d8e
  region  = "us-central1"
}

resource "google_storage_bucket" "Example" {
  name          = "demo2-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false
}

resource "random_id" "Rand_suffix" {
  byte_length = 4
}

output "Bucket_name" {
  value = google_storage_bucket.Example.name
}
