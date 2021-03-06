terraform {
  required_version = ">= 0.11" 
 backend "azurerm" {
 storage_account_name = "__terraformstorageaccount__"
     container_name       = "terraform4"
     key                  = "terraform.tfstate"
	access_key  ="W53pgC9BQOhD9GaS8qiTE9wKWhMDbda4BSMjHnN10JgkWgGI28zXYaNE9L5I327BaMHQOzIeeaoOzEBDZo6dgQ=="
  features{}
	}
	}
  provider "azurerm" {
    version = "=2.0.0"
features {}
}
resource "azurerm_resource_group" "dev" {
  name     = "__terraformstorageaccount__"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "dev" {
  name                = "appserviceplan2564"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "dev" {
  name                = "appservicename125894"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"
  app_service_plan_id = "${azurerm_app_service_plan.dev.id}"

}
