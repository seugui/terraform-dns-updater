# outputs.tf

# Output for A records
output "a_record_names" {
  value = [for record in dns_a_record_set.a_records : record.name]
}

output "a_record_addresses" {
  value = [for record in dns_a_record_set.a_records : record.addresses]
}

output "a_record_ttl" {
  value = [for record in dns_a_record_set.a_records : record.ttl]
}

# Output for CNAME records
output "cname_record_names" {
  value = [for record in dns_cname_record.cname_records : record.name]
}

output "cname_record_cnames" {
  value = [for record in dns_cname_record.cname_records : record.cname]
}

output "cname_record_ttl" {
  value = [for record in dns_cname_record.cname_records : record.ttl]
}
