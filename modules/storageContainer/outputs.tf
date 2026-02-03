output "id" {
  description = "ID of the Storage Container"
  value       = azurerm_storage_container.stc.id
}

output "name" {
  description = "Name of the Storage Container"
  value       = azurerm_storage_container.stc.name
}

output "container_access_type" {
  description = "Access Type of the Storage Container"
  value       = azurerm_storage_container.stc.container_access_type
}