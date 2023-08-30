// *** Azure Virtual Network Variables ***
variable "virtual_network_name" {
  description = "The name of the Azure Virtual Network."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the Virtual Network will be created."
  type        = string
}
variable "location" {
  description = "The Azure region where the Virtual Network will be deployed."
  type        = string
}
variable "address_space" {
  description = "The IP address space for the Azure Virtual Network in CIDR notation."
  type        = string
}
variable "address_spaces" {
  description = "List of IP address spaces for the Azure Virtual Network in CIDR notation."
  type        = list(string)
}
variable "dns_servers" {
  description = "List of custom DNS server IP addresses for the Virtual Network."
  type        = list(string)
}
