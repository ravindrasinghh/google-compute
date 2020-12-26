module "compute" {
  source       = "./module/"
  server_name  = local.server_name
  machine_type = local.machine_type
  zone         = local.zone
  network      = data.google_compute_network.network.name
  subnetwork   = data.google_compute_subnetwork.subnetwork.name
  image_name   = local.image_name
}