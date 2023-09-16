provider "google" {
  project     = "qwiklabs-gcp-03-cfb9a2f3d4f5"
  region      = "us-central-1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-03-cfb9a2f3d4f5"
  location    = "US"
  uniform_bucket_level_access = true
}

terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-03-cfb9a2f3d4f5"
    prefix  = "terraform/state"
  }
}