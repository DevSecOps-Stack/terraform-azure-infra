terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    // We'll configure this in Terraform Cloud
    // No need to fill details here for Terraform Cloud.
  }
}

provider "azurerm" {
  features {}
}

// Example resource: Azure Resource Group
resource "azurerm_resource_group" "amol_rg" {
  name     = "${var.environment_name}-amol-rg"
  location = var.location
}