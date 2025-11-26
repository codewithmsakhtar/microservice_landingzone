variable "sql_databases" {

  type = map(object({
    
    name                = string
    resource_group_name = string
    location            = string
    server_name         = string
}))
}