resource "google_container_cluster" "webshop" {
  name     = "webshop-gke-cluster1"
  project = var.project_id
  location = var.location

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "webshop-node-pool" {
  name       = "webshop-node-pool"
    project = var.project_id
  location   = var.location
  cluster    = google_container_cluster.webshop.name
  node_count = var.node_count

  node_config {
    preemptible  = var.preemptible_instances
    machine_type = var.node_pool_machine_type

    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}