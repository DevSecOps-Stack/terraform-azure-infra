variable "vm_rg_name" {
  type        = string
  description = "Name of the resource group for the VM"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username for the VM"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for VM authentication"
}

variable "os_disk_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS disk storage account type (Standard_LRS, Premium_LRS, etc.)"
}

variable "vm_size" {
  type        = string
  default     = "Standard_DS1_v2"
  description = "Size of the VM"
}

variable "vnet_name" {
  type        = string
  default     = "myVNet"
  description = "Name of the VNet"
}

variable "location" {
  type        = string
  description = "Azure location for the resources"
}
