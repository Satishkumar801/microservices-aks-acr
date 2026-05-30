variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  default = {
    "microservices" = {
      name     = "rg-microservices-prod"
      location = "East US"
      tags     = {
        environment = "production"
        project     = "microservices"
      }
    }
  }
}

variable "acr_name" {
  type    = string
  default = "acrmicroservicesprod001"
}

variable "aks_name" {
  type    = string
  default = "aks-microservices-prod"
}

variable "tags" {
  type = map(string)
  default = {
    environment = "production"
    project     = "microservices"
  }
}
