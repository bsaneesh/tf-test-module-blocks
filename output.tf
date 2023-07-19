
output "rg" {

    value = azurerm_resource_group.tftestproject1
  
}

output "vnet" {
  value = azurerm_virtual_network.tftestvnetproject1
}

output "subnet" {
  value = azurerm_subnet.tfsubnetmod
}