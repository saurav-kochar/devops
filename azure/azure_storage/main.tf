terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "3.0.0"
        }
    }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tf_rg1" {
  name     = "tf_rg1_sk"
  location = "West Europe"
}

resource "azurerm_storage_account" "new_storage_account" {
  name                     = "tfsksa1"
  resource_group_name      = azurerm_resource_group.tf_rg1.name
  location                 = azurerm_resource_group.tf_rg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "Terraform"
  }
  
}
