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
