terraform {
  required_providers {
    google = "~> 3.38"
  }
  backend "gcs" {
    bucket = "test-terraform-01"
  }
}

provider "google" {
  credentials = file("terraform.json")
  project     = "kinetic-guild-274011"
  region      = "asia-east1"
}