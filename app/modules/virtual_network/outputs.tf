// *** Azure Virtual Networks Outputs ***
 output "name" {
  description = "The name of the Azure Virtual Network."
  value       = azurerm_virtual_network.virtual_network.name
}
