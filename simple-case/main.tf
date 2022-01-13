resource "google_compute_instance" "webserver" {
  project                   = "tf1"
  name                      = "webserver"
  machine_type              = "n1-standard-1"
  zone                      = "europe-west1-b"
  allow_stopping_for_update = true
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
