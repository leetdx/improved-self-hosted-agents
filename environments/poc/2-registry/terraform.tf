terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.58.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-poc-sea-001"
    storage_account_name = "sttfstatepocsea001"
    container_name       = "stc-tfstate-poc-sea-001"
    key                  = "registry.terraform.tfstate"
  }
}