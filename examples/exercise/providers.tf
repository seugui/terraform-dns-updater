# Configure the DNS Provider
provider "dns" {
  # Specify your DNS provider configuration here
  # For example, if using BIND9, you might need to provide the update configuration
  update {
    server   = "127.0.0.1"
  }
}