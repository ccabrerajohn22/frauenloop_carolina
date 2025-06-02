# Configure Azure provider
provider "azurerm" {
  features {}

  subscription_id = "4c4c0d0a-9310-41e2-bdfb-644a34de5da8"
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "tf-storage-rg"
  location = "West Europe"
}

# Create a storage account (must be globally unique)
resource "azurerm_storage_account" "example" {
  name                     = "intcloudeng05"  #unique value only
  resource_group_name      = azurerm_resource_group.example.name
  location                = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"  # Locally-redundant storage
}

# Create a blob container
resource "azurerm_storage_container" "example" {
  name                  = "tf-blob-container"
  storage_account_id  = azurerm_storage_account.example.id
  container_access_type = "private"  # Options: private, blob, container
}