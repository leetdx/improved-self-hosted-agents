### Naming
# - Format: [type] - [workload/application/project] - [environment] - [region] - [instance]
# - Example: rg-tfstate-poc-sea-001
locals {
  location            = "southeastasia"
  resource_group_name = "rg-tfstate-poc-sea-001"
  tags = {
    environment = "poc"
    region      = "sea"
  }
}

module "resource_group" {
  source   = "../../../modules/resourceGroup"
  name     = local.resource_group_name
  location = local.location
  tags = merge(local.tags, {
    type     = "rg"
    workload = "tfstate"
    instance = "001"
  })
}

module "storage_account" {
  depends_on          = [module.resource_group]
  source              = "../../../modules/storageAccount"
  for_each            = try(var.init.storage_accounts)
  name                = each.value.name
  resource_group_name = local.resource_group_name
  location            = local.location
  tags                = merge(local.tags, each.value.tags)
}

module "storage_container" {
  depends_on         = [module.storage_account]
  source             = "../../../modules/storageContainer"
  for_each           = try(var.init.storage_containers)
  name               = each.value.name
  storage_account_id = module.storage_account[each.value.storage_account_name].id
}