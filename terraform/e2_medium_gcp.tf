provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_compute_instance" "example_instance" {
  name         = "example-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Choose an appropriate image
    }
  }

  network_interface {
    network = "default"
  }

  tags = ["example-tag"]
  metadata = {
    block-project-ssh-keys = true
  }
}
