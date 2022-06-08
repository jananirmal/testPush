resource "azurerm_resource_group" "rg_nirmal" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet_nirmal" {
  name = variables.vnetname
  location = variables.location
  resource_group_name = variables.resource_group_name
  address_space = [variables.vnetaddress]
}

resource "azurerm_subnet" "subnet_nirmal" {
    name = "TestSubNet"
    resource_group_name = azurerm_resource_group.rg_nirmal.name
    virtual_network_name = azurerm_virtual_network.vnet_nirmal
    address_prefixes = ["10.0.1.0/24"]
}