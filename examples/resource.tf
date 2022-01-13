resource "google_compute_instance" "webserver" {
  project      = "website-dev1"
  name         = "webserver"
  machine_type = "e2-micro"
}
