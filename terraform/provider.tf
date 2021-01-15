terraform {
  required_providers {
    google = "~> 3.38"
  }
  backend "gcs" {
    bucket = "test-terraform-01"
    credentials = $kinetic-guild-274011
  }
}

provider "google" {
  credentials = $kinetic-guild-274011
  project     = "kinetic-guild-274011"
  region      = "asia-east1"
}
