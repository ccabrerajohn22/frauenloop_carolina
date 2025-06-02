output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "blob_container_name" {
  value = azurerm_storage_container.example.name
}