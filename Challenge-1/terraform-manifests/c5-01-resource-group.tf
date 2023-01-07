# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "rg" {
  
  name = "${local.resource_name_prefix}-${var.resource_group_name}-${random_string.myrandom.id}"
  location = var.resource_group_location
  tags = local.common_tags
}

resource "azurerm_storage_account" "tfstatefile" {
  name                     = "${local.resource_name_prefix}-tfstate"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 =  azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
}

resource "azurerm_storage_container" "tfstatefile" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstatefile.name
  container_access_type = "blob"
}