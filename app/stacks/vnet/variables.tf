// *** Resource Group Variables ***
variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}
variable "location" {
  description = "The Azure region where the Resource Group will be created."
  type        = string
}
variable "tags" {
  description = "A map of tags to apply to the Azure Resource Group."
  type        = map(any)
}

// *** Virtual Network Variables ***
variable "virtual_network_name" {
  description = "The name of the Azure Virtual Network."
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
