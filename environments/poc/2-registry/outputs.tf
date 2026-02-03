output "container_registry" {
  value     = module.container_registry
  sensitive = true
}

output "container_registry_task" {
  value = module.container_registry_task
}