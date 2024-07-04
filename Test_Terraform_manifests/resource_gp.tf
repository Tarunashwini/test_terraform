resource "azurerm_resource_group" "aks_rg" {
    name = var.resource_grp_name
    location = var.location
}