# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.gcp_project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Primary Subnet
resource "google_compute_subnetwork" "primary-subnet" {
  name          = "${var.gcp_project_id}-primary-subnet"
  region        = var.gcp_region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}