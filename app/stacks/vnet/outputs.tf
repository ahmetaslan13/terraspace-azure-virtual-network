// *** Network Stack Outputs ***
output "resource_group_name" {
  description = "The name of the Azure Resource Group where the network resources are deployed."
  value       = module.resource_group.name
}
