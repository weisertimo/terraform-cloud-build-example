resource "google_compute_instance" "default" {
 name         = "test"
 machine_type = "e2-medium"
 zone         = "us-central1-a"
}
