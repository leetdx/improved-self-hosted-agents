data "terraform_remote_state" "registry" {
  backend = "azurerm"
  config = {
    resource_group_name  = "rg-tfstate-poc-sea-001"
    storage_account_name = "sttfstatepocsea001"
    container_name       = "stc-tfstate-poc-sea-001"
    key                  = "registry.terraform.tfstate"
  }
}