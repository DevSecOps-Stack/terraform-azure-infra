variable "environment_name" {
  type        = string
  description = "Name of the environment (dev or prod)."
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created."
}

// Add more variables as needed for AKS, VMs, etc.
