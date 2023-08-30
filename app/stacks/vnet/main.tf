// *** Create Resource Group ***
// Define resource group creation using the "resource_group" module
module "resource_group" {
  source              = "../../modules/resource_group" // Module source for resource group
  resource_group_name = var.resource_group_name       // Name of the resource group
  location            = var.location                 // Location of the resource group
  tags                = var.tags                     // Tags associated with the resource group
}

// *** Create Virtual Network ***
// Define virtual network creation using the "virtual_network" module
module "virtual_network" {
  source               = "../../modules/virtual_network"  // Module source for virtual network
  resource_group_name  = module.resource_group.name       // Reference to the created resource group's name
  virtual_network_name = var.virtual_network_name         // Name of the virtual network
  address_space        = var.address_space               // Primary address space of the virtual network
  address_spaces       = var.address_spaces              // Additional address spaces (if any)
  dns_servers          = var.dns_servers                 // DNS servers for the virtual network
  location             = module.resource_group.location  // Location inherited from the resource group
  depends_on = [
    module.resource_group  // Ensure resource group is created first
  ]
}
