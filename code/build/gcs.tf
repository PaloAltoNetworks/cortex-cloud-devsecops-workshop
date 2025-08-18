

required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 5.0"
  }
}


provider "google" {
  project = qwiklabs-gcp-03-fa7edfd03d8e
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name          = "demo2-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false

  labels = {
    yor_name  = "example"
    yor_trace = "5fa511ef-0e81-478b-b04c-e06af9ada4dc"
  }
}

resource "random_id" "rand_suffix" {
  byte_length = 4
}

output "bucket_name" {
  value = google_storage_bucket.example.name
}
