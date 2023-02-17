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

variable "resource_group_location" {
  type    = string
  description = "Location of the resource group"
}

variable "rg_name" {
  type    = string
  description = "Name of the Resource group where the machine will be created"
}

variable "net_name" {
  type    = string
  description = "Name of the network"
}


variable "subnet_name" {
  type    = string
  description = "Name of the subnet"
}

variable "ip_pub_name" {
  type    = string
  description = "Name of the public IP"
}

variable "nsg_name" {
  type    = string
  description = "Name of the network security group"
}

variable "nic_name" {
  type    = string
  description = "name of the nic"
}


variable "nic_config_name" {
  type    = string
  description = "Name of the nic configuration"
}

variable "vm_name" {
  type    = string
  description = "Name of the Virtual Machine"
}

variable "vm_size" {
  type    = string
  description = "VM size"
}


variable "image_id" {
  type    = string
  description = "Id of the reference image that will serve as the base for the VM"
}


variable "os_disk_name" {
  type    = string
  description = "Name of the OS disk"
}


variable "storage_account_type" {
  type    = string
  description = "Storage account type for the OS disk"
}

variable "pubkey" {
  type    = string
  description = "public key for the admin user"
}








