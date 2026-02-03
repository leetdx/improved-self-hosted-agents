output "id" {
  description = "ID of the Storage Account"
  value       = azurerm_storage_account.st.id
}

output "name" {
  description = "Name of the Storage Account"
  value       = azurerm_storage_account.st.name
}

output "location" {
  description = "Location of the Storage Account"
  value       = azurerm_storage_account.st.location
}