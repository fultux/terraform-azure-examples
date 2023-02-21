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

variable "subnet_id" {
  type    = string
  description = "Location of the resource group"
}


variable "nsg_id" {
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

variable "osdisk_caching" {
  type    = string
  description = "Caching type of the OS disk"
}


variable "storage_account_type" {
  type    = string
  description = "Storage account type for the OS disk"
}

variable "ssh_key_location" {
  type    = string
  description = "Location of the ssh public key"
}


variable "data_disk_name" {
  type    = string
  description = "Name of the data disk"
}

variable "data_storage_account_type" {
  type    = string
  description = "Storage account type for the datadisk"
}

variable "data_disk_size" {
  type    = number
  description = "Data disk size"
}


variable "lun_number" {
  type    = string
  description = "Lun ID"
}


variable "datadisk_caching" {
  type    = string
  description = "Caching type of the data disk"
}

variable "azure_user" {
  type    = string
  description = "VM's admin username"
}





