// *** Azure Virtual Network ***

resource "azurerm_virtual_network" "virtual_network" {
  // Name of the virtual network
  name                = var.virtual_network_name

  // Resource group for the virtual network
  resource_group_name = var.resource_group_name

  // Location of the virtual network
  location            = var.location

  // Address space for the virtual network
  address_space       = length(var.address_spaces) == 0 ? [var.address_space] : var.address_spaces

  // DNS servers for the virtual network
  dns_servers         = var.dns_servers
}