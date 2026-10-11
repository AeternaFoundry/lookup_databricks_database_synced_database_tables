variable "database_synced_database_tables_lookup" {
  description = <<EOT
Map of database_synced_database_tables_lookup, attributes below
Required:
    - instance_name
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    instance_name = string
    page_size     = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

