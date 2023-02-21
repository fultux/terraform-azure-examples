variable "tenant" {
  type    = string
  description = "Azure's service principal Tenant name"
}

variable "secret" {
  type    = string
  description = "Azure's service principal secret"
}

variable "subscription" {
  type    = string
  description = "Azure's service principal subscription"
}


variable "client_id" {
  type    = string
  description = "Azure's service principal client id"
}


variable "rg_name" {
  type    = string
  description = "Name of the resource group"
}


variable "rg_location" {
  type    = string
  description = "Location of the resource group"
  default = "francecentral"
}


