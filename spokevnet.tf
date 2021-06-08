resource "azurerm_virtual_network" "spoke1_vnet" {
  name                = var.spoke1_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = [var.spoke1_vnet_cidr]

  subnet {
    name           = "spoke1_priv"
    address_prefix = cidrsubnet(var.spoke1_vnet_cidr, 8, 0)
  }
  subnet {
    name           = "spoke1_pub"
    address_prefix = cidrsubnet(var.spoke1_vnet_cidr, 8, 1)
  }
}

resource "azurerm_virtual_network" "spoke2_vnet" {
  name                = var.spoke2_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = [var.spoke2_vnet_cidr]

  subnet {
    name           = "spoke2_priv"
    address_prefix = cidrsubnet(var.spoke2_vnet_cidr, 8, 0)
  }
  subnet {
    name           = "spoke2_pub"
    address_prefix = cidrsubnet(var.spoke2_vnet_cidr, 8, 1)
  }
}