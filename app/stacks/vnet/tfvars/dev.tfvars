// *** Resorce Group Values ***
resource_group_name = "rg-dev-networking"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Virtual Network Values ***
virtual_network_name = "dev-networking"
address_space = "10.0.0.0/16"
address_spaces = []
dns_servers = ["10.0.0.4","10.0.0.5"]
