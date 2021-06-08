resource "azurerm_virtual_network_peering" "spoke1_hub_peer" {
  name                      = "${azurerm_virtual_network.spoke1_vnet.name}-to-${azurerm_virtual_network.hub_vnet.name}"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.spoke1_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub_vnet.id
}

resource "azurerm_virtual_network_peering" "hub_spoke1_peer" {
  name                      = "${azurerm_virtual_network.hub_vnet.name}-to-${azurerm_virtual_network.spoke1_vnet.name}"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.hub_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke1_vnet.id
}

resource "azurerm_virtual_network_peering" "spoke2_hub_peer" {
  name                      = "${azurerm_virtual_network.spoke2_vnet.name}-to-${azurerm_virtual_network.hub_vnet.name}"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.spoke2_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub_vnet.id
}

resource "azurerm_virtual_network_peering" "hub_spoke2_peer" {
  name                      = "${azurerm_virtual_network.hub_vnet.name}-to-${azurerm_virtual_network.spoke2_vnet.name}"
  resource_group_name       = azurerm_resource_group.rg.name
  virtual_network_name      = azurerm_virtual_network.hub_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke2_vnet.id
}
