resource "azurerm_mssql_database" "sql_databases" {
  for_each = var.sql_databases


  name      = each.value.name
  server_id = data.azurerm_mssql_server.server_ids[each.key].id
}
