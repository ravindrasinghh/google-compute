environment = {
  "dev" = {
    server_name  = "dev-test-server-v2"
    machine_type = "e2-medium"
    zone         = "asia-east1-a"
    network      = "tf-practical"
    subnetwork   = "tf-private"
    image_name   = "centos-cloud/centos-8"
  },
  "qa" = {
    server_name  = "qa-test-server-v2"
    machine_type = "e2-medium"
    zone         = "asia-east1-a"
    network      = "test-1"
    subnetwork   = "pod-subnet"
    image_name   = "centos-cloud/centos-8"
  },
  "stage" = {
    server_name  = "stage-test-server-v2"
    machine_type = "e2-medium"
    zone         = "asia-east1-a"
    network      = "test-1"
    subnetwork   = "pod-subnet"
    image_name   = "centos-cloud/centos-8"
  }
}    
