terraform {
backend "azure" {}
}

provider "azureem" {
    version ="=2.4.0"
    features {}
}

resource "azurerm_resource_group" {

name = "rgm_1"
location = "East US"

}

output "id" {

    value = data.azurerm_resource_group.example.id
}
