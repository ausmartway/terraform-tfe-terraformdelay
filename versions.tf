##Add your terraform core and provider version constrains here.
terraform {
  required_version = ">= 0.13"
  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.12" # where X.Y is the current major version and minor version
    }

  }
}
