output "image_names_safe" {
  value = try(
    azurerm_container_registry_task.cr_task.docker_step[0].image_names,
    []
  )
}