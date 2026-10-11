variable "data_safe_generate_on_prem_connector_configurations" {
  description = <<EOT
Map of data_safe_generate_on_prem_connector_configurations, attributes below
Required:
    - on_prem_connector_id
    - password
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    on_prem_connector_id = string
    password             = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

