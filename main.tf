provider "azurerm"{
    version ="~>2.46.0"
    features {}
}
#creating resouse group
resource "azurerm_resource_group" "myterraformgroup"{
    name="myResourceGroup_ars"
    location="eastus"
    tags ={
        environment="Terraform Demo"
    }
}