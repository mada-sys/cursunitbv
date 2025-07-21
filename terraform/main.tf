locals {
  prefix    = "mada"
  filename  = "fisier.txt"
  file_path = "${path.module}/${local.filename}"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg2" {
  count    = 2
  name     = "${local.prefix}-resources-${count.index}"
  location = "West Europe"
}
