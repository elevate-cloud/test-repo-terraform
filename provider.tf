terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.36.0"
    }
  }
  backend "remote"{
    organization = "elevate-deop"

    workspaces {
        name = "Dec17-terraform-cloud"
    }
  }
}


provider "azurerm" {
  features {
    
  }
}