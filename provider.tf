provider "google" {
  project = "solar-fuze-379511"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "datamob-1"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

