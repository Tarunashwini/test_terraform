resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name = "${azurerm_resource_group.aks_rg.name}-test-akscluster"
  location = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix = "testdns"

  default_node_pool {
    name = "testdefault"
    node_count = 1
    vm_size = "standard_a2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

}