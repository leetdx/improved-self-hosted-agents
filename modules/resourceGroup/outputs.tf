output "id" {
  description = "ID of the Resource Group"
  value       = azurerm_resource_group.rg.id
}

output "name" {
  description = "Name of the Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "Location of the Resource Group"
  value       = azurerm_resource_group.rg.location
}