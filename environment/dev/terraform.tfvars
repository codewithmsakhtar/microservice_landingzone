rgs = {
rg1= {
    name = "rg-dev-india"
    location= "eastus"
    }
}


acrs  = {
  
  acr1 = {
   name = "acrdevtitech"
   location = "eastus"
   sku = "Standard"
   resource_group_name = "rg-dev-india"



}
}



  sql_databases = {
  sql_db1 = {
    name                = "todo-database"
    server_name         = "ershapp-dev-eastus-sqlsrv"
    resource_group_name = "rg-dev-india"
    location            = "Central India"
  }
  }

 

sql_servers = {
  sql1 = {
    name                                     = "ershapp-dev-eastus-sqlsrv"
    resource_group_name                      = "rg-dev-india"
    location                                 = "Central India"
    version                                  = "12.0"
    kv_name                                  = "kv-todo-apps"
    sql_username_secret_name                 = "sql-adminusername"
    sql_password_secret_name                 = "sql-adminpassword"
  }}