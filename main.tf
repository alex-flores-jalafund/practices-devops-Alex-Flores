module "azurerm_app_service_plan" {
  source   = "./modules/app_service"
  stName   = var.stName
  rgName =var.rgName
  azplan   = var.azplan
  location = var.location
  namefunction=var.namefunction
}
