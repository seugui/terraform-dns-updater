# locals.tf

# Define local variables to store JSON files and their decoded content
locals {
  json_files = fileset(var.json_directory, "*.json")

  # Store decoded JSON in a map for each file
  decoded_json = {
    for file in local.json_files : replace(file, ".json", "") => jsondecode(file("${var.json_directory}/${file}"))
  }
}
