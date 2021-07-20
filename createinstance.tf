resource "google_compute_instance" "default" {
  name         = "first-terra-two"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    device_name = "boot"
    auto_delete = true
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

}