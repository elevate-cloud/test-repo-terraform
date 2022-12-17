resource "azurerm_resource_group" "rg_kurs" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "storage_kurs" {
  name                     = "tfcloudstorage0099880"
  resource_group_name      = azurerm_resource_group.rg_kurs.name
  location                 = azurerm_resource_group.storage_kurs.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
