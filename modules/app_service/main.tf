resource "azurerm_resource_group" "rgBase" {
  name     = var.stName
  location = var.location
}

#Create app storage account
resource "azurerm_storage_account" "st" {
  name                     = var.stName
  resource_group_name      = azurerm_resource_group.rgBase.name
  location                 = azurerm_resource_group.rgBase.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Cool"
}

resource "azurerm_app_service_plan" "example" {
  name                = var.azplan
  location            = azurerm_resource_group.rgBase.location
  resource_group_name = azurerm_resource_group.rgBase.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_function_app" "rg-alex-example" {
  name                       = var.namefunction
  location                   = azurerm_resource_group.rgBase.location
  resource_group_name        = azurerm_resource_group.rgBase.name
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = azurerm_storage_account.st.name
  storage_account_access_key = azurerm_storage_account.st.primary_access_key
}