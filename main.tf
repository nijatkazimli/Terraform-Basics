# Resource Group
resource "azurerm_resource_group" "rg" {
  name      = var.resource_group
  location  = var.resource_group_location
}

# Service Plan
resource "azurerm_service_plan" "sp-linux" {
  name =                var.service_plan
  resource_group_name = azurerm_resource_group.rg.name
  location =            azurerm_resource_group.rg.location
  sku_name =            var.service_plan_sku
  os_type =             var.linux_service_plan_os
}

# Linux WebApp
resource "azurerm_linux_web_app" "wa-linux" {
  name =                var.web_app_name
  resource_group_name = azurerm_service_plan.sp-linux.resource_group_name
  service_plan_id =     azurerm_service_plan.sp-linux.id
  location =            azurerm_service_plan.sp-linux.location

  site_config {}
}