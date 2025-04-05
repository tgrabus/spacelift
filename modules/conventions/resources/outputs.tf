output "name" {
  description = "CAF-compliant resource name"
  value       = data.azurecaf_name.this.result
}

output "location_short" {
  description = "Short version of the location"
  value       = local.derived_location_short
}
