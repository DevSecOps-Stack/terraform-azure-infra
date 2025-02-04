<<<<<<< HEAD
// sms/main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    # Terraform Cloud's remote backend
  }
}

provider "azurerm" {
  features {}
}

module "sms_aks" {
  source = "../modules/azure_aks"

  aks_rg_name      = "${var.environment_name}-sms-aks-rg"
  aks_cluster_name = "${var.environment_name}-sms-aks"
  aks_dns_prefix   = "sms-${var.environment_name}-aks"
  location         = var.location

  node_count   = var.aks_node_count
  node_vm_size = var.aks_node_vm_size
}

module "sms_vm" {
  source = "../modules/azure_vm"

  vm_rg_name   = "${var.environment_name}-sms-vm-rg"
  vm_name      = "${var.environment_name}-sms-vm"
  location     = var.location
  vm_size      = var.vm_size
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key
  os_disk_type   = var.os_disk_type
}
=======
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    // We'll configure this in Terraform Cloud
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "sms_rg" {
  name     = "${var.environment_name}-sms-rg"
  location = var.location
}
>>>>>>> refs/remotes/origin/main
