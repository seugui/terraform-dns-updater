# Root-level variables.tf

variable "json_directory" {
  description = "Path to the directory containing JSON files"
  type        = string
  default     = "./examples/exercise/input-json"  # You can adjust the default value as needed
}
