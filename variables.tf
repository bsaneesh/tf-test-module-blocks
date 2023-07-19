variable "rgname" {
  type = string
  description = "Resource group name"
}

variable "location" {
 type = string
 description = "location name"
}

variable "vnetname" {
 type = string
 description = "name of the virtual network"
  
}

variable "vnetaddress" {
    type = string
    description = "vnet address space"
  
}

variable "subnetname" {
  type = string
  description = "subnet name"
  default = "default"
}