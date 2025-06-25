provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "autopilot_cluster" {
  name     = var.cluster_name
  location = var.region

  enable_autopilot = true

  # Optional: Network configuration
  network    = var.network
  subnetwork = var.subnetwork
}
