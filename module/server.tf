resource "google_compute_instance" "server" {
  name         = var.server_name
  machine_type = var.machine_type
  zone         = var.zone
  tags = ["tf"] //Security group 
  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }
  network_interface {
    network            = var.network
    subnetwork         = var.subnetwork
    subnetwork_project = var.subnetwork_project

    # access_config {
    #   // Empheral IP
    # }
  }
  metadata_startup_script = data.template_file.container_setup.rendered

}
