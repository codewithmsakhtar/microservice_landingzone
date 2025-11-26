variable "acrs" {
  type = map(object({
    name                 = string
    location             = string
    sku                  = string
    resource_group_name  = string
  }))
}