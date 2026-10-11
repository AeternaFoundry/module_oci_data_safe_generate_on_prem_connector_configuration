output "data_safe_generate_on_prem_connector_configurations_id" {
  description = "Map of id values across all data_safe_generate_on_prem_connector_configurations, keyed the same as var.data_safe_generate_on_prem_connector_configurations except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_generate_on_prem_connector_configuration.data_safe_generate_on_prem_connector_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_generate_on_prem_connector_configurations_on_prem_connector_id" {
  description = "Map of on_prem_connector_id values across all data_safe_generate_on_prem_connector_configurations, keyed the same as var.data_safe_generate_on_prem_connector_configurations except keys with no on_prem_connector_id are omitted"
  value       = { for k, v in oci_data_safe_generate_on_prem_connector_configuration.data_safe_generate_on_prem_connector_configurations : k => v.on_prem_connector_id if v.on_prem_connector_id != null && length(v.on_prem_connector_id) > 0 }
}
output "data_safe_generate_on_prem_connector_configurations_password" {
  description = "Map of password values across all data_safe_generate_on_prem_connector_configurations, keyed the same as var.data_safe_generate_on_prem_connector_configurations except keys with no password are omitted"
  value       = { for k, v in oci_data_safe_generate_on_prem_connector_configuration.data_safe_generate_on_prem_connector_configurations : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}

