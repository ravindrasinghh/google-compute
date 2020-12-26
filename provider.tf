terraform {
  required_providers {
    google = "~> 3.38"
  }
  backend "gcs" {
    bucket = "test-terraform-01"
    credentilas = "terraform.json"
  }
}

provider "google" {
  credentials = "${GOOGLE_APPLICATION_CREDENTIAL}"
  project     = "kinetic-guild-274011"
  region      = "asia-east1"
}
