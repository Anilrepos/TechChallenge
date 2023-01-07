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
  }
  backend "azurerm" {
        resource_group_name  = azurerm_resource_group.rg.name
        storage_account_name = azurerm_storage_account.tfstatefile.name
        container_name       = "tfstatefile"
        key                  = "terraform.tfstate"
    }

}

# Provider Block
provider "azurerm" {
 features {}          
}


