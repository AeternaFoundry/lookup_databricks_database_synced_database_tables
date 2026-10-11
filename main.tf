data "databricks_database_synced_database_tables" "database_synced_database_tables_lookup" {
  for_each = var.database_synced_database_tables_lookup

  instance_name   = each.value.instance_name
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

