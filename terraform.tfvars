environment = {
  "dev" = {
    server_name  = "test-server-v2"
    machine_type = "e2-medium"
    zone         = "asia-east1-a"
    network      = "test-1"
    subnetwork   = "pod-subnet"
    image_name   = "centos-cloud/centos-8"
  }
}    