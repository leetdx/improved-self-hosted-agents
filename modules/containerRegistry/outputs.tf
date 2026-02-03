output "id" {
  description = "ID of the Container Registry"
  value       = azurerm_container_registry.cr.id
}

output "name" {
  description = "Name of the Container Registry"
  value       = azurerm_container_registry.cr.name
}

output "location" {
  description = "Location of the Container Registry"
  value       = azurerm_container_registry.cr.location
}

output "login_server" {
  description = "Server of the Container Registry"
  value       = azurerm_container_registry.cr.login_server
}

output "admin_username" {
  description = "Username of the Container Registry Server"
  value       = azurerm_container_registry.cr.admin_username
}

output "admin_password" {
  description = "User Password of the Container Registry Server"
  value       = azurerm_container_registry.cr.admin_password
}