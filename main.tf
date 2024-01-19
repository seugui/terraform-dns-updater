# Set the required Terraform version and providers
terraform {
  required_version = ">= 0.13.5"
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = ">= 3.4.0"
    }
  }
}


# Call the Terraform module in the exercise directory
module "dns_updater" {
  source = "./examples/exercise"
  version = "1.0.0" 
  json_directory = var.json_directory      # Pass the variable value
}
