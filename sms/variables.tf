<<<<<<< HEAD
// sms/variables.tf

variable "environment_name" {
  type        = string
  description = "Environment name (dev, prod, etc.)."
}

variable "location" {
  type        = string
  description = "Azure region for resources."
}

//
// Variables used by the AKS module
//
variable "aks_node_count" {
  type        = number
  default     = 1
  description = "Number of nodes in the AKS cluster."
}

variable "aks_node_vm_size" {
  type        = string
  default     = "Standard_DS2_v2"
  description = "VM size for AKS nodes."
}

//
// Variables used by the VM module
//
variable "vm_size" {
  type        = string
  default     = "Standard_DS1_v2"
  description = "Size of the VM."
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username for the VM."
}

variable "ssh_public_key" {
  type        = string
  default     = "ssh-rsa AAAA...dummyKey"
  description = "SSH public key for Linux VM authentication."
}

variable "os_disk_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS disk type for the VM (Standard_LRS, Premium_LRS, etc.)."
}

variable "vnet_name" {
  type        = string
  default     = "smsVNet"
  description = "Name of the virtual network for the VM module."
}
=======
variable "environment_name" {
  type        = string
  description = "Name of the environment (dev or prod)."
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created."
}

// Add more variables as needed for your SMS project.
>>>>>>> refs/remotes/origin/main
