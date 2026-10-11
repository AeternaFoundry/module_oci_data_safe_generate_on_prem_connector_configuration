resource "oci_data_safe_generate_on_prem_connector_configuration" "data_safe_generate_on_prem_connector_configurations" {
  for_each = var.data_safe_generate_on_prem_connector_configurations

  on_prem_connector_id = each.value.on_prem_connector_id
  password             = each.value.password

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

