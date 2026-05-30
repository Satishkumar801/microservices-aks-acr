module "resource_group" {
  source          = "./modules/resource_group"
  resource_groups = var.resource_groups
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_names["microservices"]
  location            = module.resource_group.resource_group_locations["microservices"]
  sku                 = "Standard"
  tags                = var.tags
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.aks_name
  location            = module.resource_group.resource_group_locations["microservices"]
  resource_group_name = module.resource_group.resource_group_names["microservices"]
  dns_prefix          = var.aks_name
  tags                = var.tags
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id                     = module.aks.aks_kubelet_identity_id
  role_definition_name             = "AcrPull"
  scope                            = module.acr.acr_id
  skip_service_principal_aad_check = true
}
