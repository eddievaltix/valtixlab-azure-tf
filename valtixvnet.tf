resource "azurerm_virtual_network" "hub_vnet" {
  name                = var.hub_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = [var.hub_vnet_cidr]

  subnet {
    name           = "mgmt"
    address_prefix = cidrsubnet(var.hub_vnet_cidr, 8, 0)
  }
  subnet {
    name           = "datapath"
    address_prefix = cidrsubnet(var.hub_vnet_cidr, 8, 1)
  }
}

resource "azurerm_network_security_group" "hub_mgmt_nsg" {
  name                = "valtix-mgmt-sg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "allow-outbound-all"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "hub_dp_nsg" {
  name                = "valtix-datapath-sg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "allow-all"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}