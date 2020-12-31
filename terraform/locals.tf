locals {
  environment  = "${terraform.workspace}"
  server_info  = "${lookup(var.environment, local.environment)}"
  server_name  = local.server_info.server_name
  machine_type = local.server_info.machine_type
  zone         = local.server_info.zone
  network      = local.server_info.network
  subnetwork   = local.server_info.subnetwork
  image_name   = local.server_info.image_name
}