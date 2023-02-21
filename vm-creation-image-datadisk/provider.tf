terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.44.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = var.client_id 
  client_secret   = var.secret
  tenant_id       = var.tenant
  subscription_id = var.subscription
}
