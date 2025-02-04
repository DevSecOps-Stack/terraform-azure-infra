variable "aks_rg_name" {
  type        = string
  description = "Name of the Resource Group for AKS"
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "aks_dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster"
}

variable "location" {
  type        = string
  description = "Azure location where the AKS cluster will be created"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Number of nodes in the default node pool"
}

variable "node_vm_size" {
  type        = string
  default     = "Standard_DS2_v2"
  description = "VM size for the AKS node"
}
