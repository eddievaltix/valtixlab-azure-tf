variable "hub_vnet_cidr" {
  description = "CIDR of the Security Hub Virtual Network"
}

variable "spoke1_vnet_cidr" {
  description = "CIDR of the Spoke 1 Virtual Network"
}

variable "spoke2_vnet_cidr" {
  description = "CIDR of the Spoke 2 Virtual Network"
}

variable "hub_vnet_name" {
  description = "Name of the virtual network to create"
}

variable "spoke1_vnet_name" {
  description = "Name of the virtual network to create"
}

variable "spoke2_vnet_name" {
  description = "Name of the virtual network to create"
}

variable "location" {
  description = "Azure location where the resource group and all objects in this Terraform template will be created"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}
