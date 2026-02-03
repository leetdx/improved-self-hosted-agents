resource "azurerm_container_registry_task" "cr_task" {
  name                  = var.name
  container_registry_id = var.container_registry_id

  platform {
    os = var.platform_os
  }

  docker_step {
    dockerfile_path      = var.dockerfile_path
    context_path         = var.context_path
    context_access_token = var.context_access_token
    image_names          = var.image_names
  }
}

resource "azurerm_container_registry_task_schedule_run_now" "cr_task_run_now" {
  container_registry_task_id = azurerm_container_registry_task.cr_task.id
}