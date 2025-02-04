// amol/main.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    # Terraform Cloud's remote backend configuration (no manual state needed).
  }
}

provider "azurerm" {
  features {}
}

// -- Module for AKS --
module "amol_aks" {
  source = "../modules/azure_aks"

  aks_rg_name      = "${var.environment_name}-amol-aks-rg"
  aks_cluster_name = "${var.environment_name}-amol-aks"
  aks_dns_prefix   = "amol-${var.environment_name}-aks"
  location         = var.location

  node_count   = var.aks_node_count
  node_vm_size = var.aks_node_vm_size
}

// -- Module for VM --
module "amol_vm" {
  source = "../modules/azure_vm"

  vm_rg_name   = "${var.environment_name}-amol-vm-rg"
  vm_name      = "${var.environment_name}-amol-vm"
  location     = var.location
  vm_size      = var.vm_size
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key
  os_disk_type   = var.os_disk_type
}
