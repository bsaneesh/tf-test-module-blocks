resource "azurerm_resource_group" "tftestproject1" {
  name     = var.rgname
  location = var.location
  tags = {"owner" = "Aneesh BS"}
}

resource "azurerm_virtual_network" "tftestvnetproject1" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = var.rgname
  address_space       = [var.vnetaddress]
  depends_on = [ azurerm_resource_group.tftestproject1 ]
}

resource "azurerm_subnet" "tfsubnetmod" {
  name                 = var.subnetname
  address_prefixes     =  [cidrsubnet(azurerm_virtual_network.tftestvnetproject1.address_space[0],8,0)]
  resource_group_name  =  var.rgname
  virtual_network_name = var.vnetname
  depends_on           = [azurerm_virtual_network.tftestvnetproject1]
}
