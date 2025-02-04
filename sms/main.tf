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
