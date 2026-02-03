### Naming
# - Format: [type] - [workload/application/project] - [environment] - [region] - [instance]
# - Example: rg-tfstate-poc-sea-001
locals {
  location            = "southeastasia"
  resource_group_name = "rg-isha-poc-sea-001"
  tags = {
    environment = "poc"
    region      = "sea"
  }
  image_tag = "{{.Run.ID}}"
}

module "resource_group" {
  source   = "../../../modules/resourceGroup"
  name     = local.resource_group_name
  location = local.location
  tags = merge(local.tags, {
    type     = "rg"
    workload = "isha"
    instance = "001"
  })
}

module "container_registry" {
  source              = "../../../modules/containerRegistry"
  for_each            = try(var.registry.container_registries)
  name                = each.value.name
  resource_group_name = local.resource_group_name
  admin_enabled       = each.value.admin_enabled
  tags                = merge(local.tags, each.value.tags)
}

module "container_registry_task" {
  depends_on            = [module.container_registry]
  source                = "../../../modules/containerRegistryTask"
  for_each              = try(var.registry.container_registry_tasks)
  name                  = each.value.name
  container_registry_id = module.container_registry[each.value.container_registry_name].id
  platform_os           = each.value.platform_os
  dockerfile_path       = each.value.dockerfile_path
  context_path          = each.value.context_path
  context_access_token  = var.context_access_token
  image_names           = ["${module.container_registry[each.value.container_registry_name].login_server}/${each.value.cr_repo_name}:${local.image_tag}"]
}