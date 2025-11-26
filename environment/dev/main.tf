module "azurerm_resource_group" {
source = "../../modules/Azurerm_resource_group"
rgs =var.rgs
}


module "azurerm_container_registry" {

depends_on = [ module.azurerm_resource_group ]

source = "../../modules/azurerm_container_registry"
acrs = var.acrs

}


module "mssql_server" {
  source = "../../modules/azurerm_mssql_server"

  sql_servers = var.sql_servers
  depends_on = [module.azurerm_resource_group]
}
module "azurerm_mssql_database" {
  source = "../../modules/azurerm_mssql_database"

  sql_databases = var.sql_databases

  depends_on = [module.mssql_server]
  
}