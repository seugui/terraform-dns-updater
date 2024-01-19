# outputs.tf

output "a_record_names" {
  value = module.dns_updater.a_record_names
}

output "a_record_addresses" {
  value = module.dns_updater.a_record_addresses
}

output "a_record_ttl" {
  value = module.dns_updater.a_record_ttl
}

output "cname_record_names" {
  value = module.dns_updater.cname_record_names
}

output "cname_record_cnames" {
  value = module.dns_updater.cname_record_cnames
}

output "cname_record_ttl" {
  value = module.dns_updater.cname_record_ttl
}
