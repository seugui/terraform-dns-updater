## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.5 |
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | >= 3.4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_updater"></a> [dns\_updater](#module\_dns\_updater) | ./examples/exercise | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_json_directory"></a> [json\_directory](#input\_json\_directory) | Path to the directory containing JSON files | `string` | `"./examples/exercise/input-json"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a_record_addresses"></a> [a\_record\_addresses](#output\_a\_record\_addresses) | n/a |
| <a name="output_a_record_names"></a> [a\_record\_names](#output\_a\_record\_names) | n/a |
| <a name="output_a_record_ttl"></a> [a\_record\_ttl](#output\_a\_record\_ttl) | n/a |
| <a name="output_cname_record_cnames"></a> [cname\_record\_cnames](#output\_cname\_record\_cnames) | n/a |
| <a name="output_cname_record_names"></a> [cname\_record\_names](#output\_cname\_record\_names) | n/a |
| <a name="output_cname_record_ttl"></a> [cname\_record\_ttl](#output\_cname\_record\_ttl) | n/a |
