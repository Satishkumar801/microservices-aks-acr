terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "50d7f43f-63cc-4cf6-8829-1542e9da33ea"
  features {}
}
