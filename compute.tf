# Create a new instance
resource "google_compute_instance" "default" {
  count        = 3
  name         = "host-${count.index}"
  machine_type = "f1-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "centos-7"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config = {
    }
  }
}
