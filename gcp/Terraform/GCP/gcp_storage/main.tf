terraform {
  required_providers {
    google={
      source = "hashicorp/google"
      version = "6.39"
    }
  }
}

provider "google" {
  project = "steel-paratext-464008-c4"
  region = "us-central1"
  zone = "us-central1-a"
}

resource "google_storage_bucket" "GCS1" {
  name = "tf_bucket1_sk"
  location = "us"
  
}
