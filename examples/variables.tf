variable "subnetwork_region" {
  type    = string
  default = "europe-west1"
}

resource "google_compute_subnetwork" "vpc_network_subnet" {
  name          = "${var.project_id}-subnet"
  ip_cidr_range = var.ip_cidr_range
  region        = var.subnetwork_region
  network       = google_compute_network.vpc_network.id
  project       = var.project_id
  depends_on    = [google_compute_network.vpc_network]
}
