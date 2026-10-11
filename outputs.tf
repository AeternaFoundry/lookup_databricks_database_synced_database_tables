output "database_synced_database_tables_lookup_instance_name" {
  description = "Map of instance_name values across all database_synced_database_tables_lookup, keyed the same as var.database_synced_database_tables_lookup except keys with no instance_name are omitted"
  value       = { for k, v in data.databricks_database_synced_database_tables.database_synced_database_tables_lookup : k => v.instance_name if v.instance_name != null && length(v.instance_name) > 0 }
}
output "database_synced_database_tables_lookup_page_size" {
  description = "Map of page_size values across all database_synced_database_tables_lookup, keyed the same as var.database_synced_database_tables_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_database_synced_database_tables.database_synced_database_tables_lookup : k => v.page_size if v.page_size != null }
}
output "database_synced_database_tables_lookup_provider_config" {
  description = "Map of provider_config values across all database_synced_database_tables_lookup, keyed the same as var.database_synced_database_tables_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_database_synced_database_tables.database_synced_database_tables_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "database_synced_database_tables_lookup_synced_tables" {
  description = "Map of synced_tables values across all database_synced_database_tables_lookup, keyed the same as var.database_synced_database_tables_lookup except keys with no synced_tables are omitted"
  value       = { for k, v in data.databricks_database_synced_database_tables.database_synced_database_tables_lookup : k => v.synced_tables if v.synced_tables != null && length(v.synced_tables) > 0 }
}

