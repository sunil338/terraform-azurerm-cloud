terraform {
  cloud {

    organization = "sunilmuradi"

    workspaces {
      name = "New"
    }
  }
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
client_id="3c8da5d7-001d-4ef2-96e8-13368b5a48d6"
client_secret="31h8Q~T0DeKBouJvyUb6F5tDJ9_AFYYTV3TzAbjH"
tenant_id="7e1b4521-93b6-473d-8e77-cf32c35bff05"
subscription_id="34a1c0d5-ab81-462c-89db-795e1572cd70"
}

variable "rgname" {
  default = "teraformcloud2"
}

variable "location" {
  default = "East US 2"
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
