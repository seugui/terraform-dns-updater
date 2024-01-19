# outputs.tf

# Output for A records
output "a_record_names" {
  description = "Names of the DNS A records"
  value       = module.dns_updater.a_record_names
}

output "a_record_addresses" {
  description = "Addresses of the DNS A records"
  value       = module.dns_updater.a_record_addresses
}

output "a_record_ttl" {
  description = "Time-to-Live (TTL) for the DNS A records"
  value       = module.dns_updater.a_record_ttl
}

# Output for CNAME records
output "cname_record_names" {
  description = "Names of the DNS CNAME records"
  value       = module.dns_updater.cname_record_names
}

output "cname_record_cnames" {
  description = "CNAMEs of the DNS CNAME records"
  value       = module.dns_updater.cname_record_cnames
}

output "cname_record_ttl" {
  description = "Time-to-Live (TTL) for the DNS CNAME records"
  value       = module.dns_updater.cname_record_ttl
}
