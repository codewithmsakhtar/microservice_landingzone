
variable "rgs"{
 type = map(object({
  name        = string
  location    = string
  managed_by  = optional(string)
  tags        = optional(map(string))
}))

}

variable "acrs" {
  type = map(object({
    name                 = string
    location             = string
    sku                  = string
    resource_group_name  = string
  }))
}

variable "sql_servers" {

  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    version             = string
    kv_name                  = string
    sql_username_secret_name = string
    sql_password_secret_name = string
    administrator_login_password_wo              = optional(string)
    administrator_login_password_wo_version      = optional(number)
  }))
}


variable "sql_databases" {

  type = map(object({
    
    name                = string
    resource_group_name = string
    location            = string
    server_name         = string
}))
}

