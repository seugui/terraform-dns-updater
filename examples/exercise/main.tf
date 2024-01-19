# main.tf

# Terraform DNS Updater Module
#
# This Terraform module is designed to dynamically update DNS records based on JSON files.
# It currently supports DNS A records and CNAME records. You can easily extend it to
# support other record types by adding more resource blocks.
#
# Usage:
# 1. Configure the Terraform version and required providers.
# 2. Set up the DNS provider configuration in the "dns" provider block.
# 3. Define local variables to store JSON files and their decoded content.
# 4. Create resource blocks for each DNS record type (e.g., A records, CNAME records).
# 5. Customize the attributes within each resource block to match your DNS record requirements.
# 6. Add more resource blocks for additional record types as needed.
#
# Example:
# ```hcl
# module "dns_updater" {
#   source         = "path/to/module"
#   json_directory = "./path/to/json/files"
# }
# ```
# Ensure to replace "path/to/module" with the actual path or source URL of the module.

# main.tf

# Terraform Configuration for DNS Records

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

# Define a Terraform resource block for DNS A records
resource "dns_a_record_set" "a_records" {
  # Create one resource instance for each JSON file with dns_record_type "a"
  for_each = {
    for k, v in local.decoded_json : k => v if v.dns_record_type == "a"
  }

  # Set attributes for each A record
  name      = each.key
  zone      = each.value.zone
  addresses = each.value.addresses
  ttl       = each.value.ttl
}

# Define a Terraform resource block for DNS CNAME records
resource "dns_cname_record" "cname_records" {
  # Create one resource instance for each JSON file with dns_record_type "cname"
  for_each = {
    for k, v in local.decoded_json : k => v if v.dns_record_type == "cname"
  }

  # Set attributes for each CNAME record
  name        = each.key
  zone        = each.value.zone
  cname       = each.value.cname
  ttl         = each.value.ttl
}

# Add more resource blocks for other record types as needed