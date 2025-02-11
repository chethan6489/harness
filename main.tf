# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
}

# Provider Block
provider "azurerm" {
  subscription_id = "ce9ae6de-058b-4cf9-ac15-d9a6211f2493"
  features {
    
  }
  
}

resource "azurerm_resource_group" "wells" {
  name     = "wellsfargo"
  location = "West Europe"
}
