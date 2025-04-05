terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "spacelift-example-rg"
  location = "East US"
}

resource "azurerm_resource_group" "example2" {
  name     = "spacelift-example2-rg"
  location = "East US"
}