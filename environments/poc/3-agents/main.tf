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
}

locals {
  registry = data.terraform_remote_state.registry.outputs.container_registry
}

module "container_instance" {
  source                       = "../../../modules/containerInstance"
  for_each                     = try(var.agents-ci.container_instances)
  group_name                   = each.value.group_name
  resource_group_name          = local.resource_group_name
  location                     = local.location
  ip_address_type              = each.value.ip_address_type
  os_type                      = each.value.os_type
  container_name               = each.value.container_name
  container_image              = "${local.registry[each.value.container_registry_name].login_server}/${each.value.cr_repo_name}:${each.value.image_tag}"
  cr_server                    = local.registry[each.value.container_registry_name].login_server
  cr_username                  = local.registry[each.value.container_registry_name].admin_username
  cr_password                  = local.registry[each.value.container_registry_name].admin_password
  environment_variables        = each.value.environment_variables
  secure_environment_variables = var.secure_environment_variables
  tags                         = merge(local.tags, each.value.tags)
}