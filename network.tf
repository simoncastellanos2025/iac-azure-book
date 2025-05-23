resource "azurerm_virtual_network" "vnet" {
  name                = "book-vnet"
  location            = "West Europe"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    environment = "production"
    owner       = "your-team"
  }
}

resource "azurerm_subnet" "subnet" {
  name                 = "book-subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  address_prefixes       = ["10.0.10.0/24"]
}
