resource_groups = {
  "microservices" = {
    name     = "rg-microservices-prod"
    location = "Australia East"
    tags     = {
      environment = "production"
      project     = "microservices"
      managed_by  = "terraform"
    }
  }
}

acr_name = "acrmicroservicesprod001"
aks_name = "aks-microservices-prod"

tags = {
  environment = "production"
  project     = "microservices"
  managed_by  = "terraform"
}
