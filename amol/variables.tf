variable "environment_name" {
  type        = string
  description = "Environment name (e.g., dev, prod)."
}

variable "location" {
  type        = string
  description = "Azure region."
}

variable "aks_node_count" {
  type        = number
  default     = 1
  description = "Number of nodes in the AKS default node pool."
}

variable "aks_node_vm_size" {
  type        = string
  default     = "Standard_DS2_v2"
  description = "Size of the AKS node."
}

variable "vm_size" {
  type        = string
  default     = "Standard_DS1_v2"
  description = "Size of the VM."
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username for VMs."
}

variable "ssh_public_key" {
  type        = string
  default     = "ssh-rsa AAAA...." // example
  description = "SSH public key for Linux VM authentication."
}

variable "os_disk_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS disk type for the VM."
}
variable "location" {
  type        = string
  description = "Azure region where resources will be created."
}

