variable "cluster_name" {
  type        = string
  description = "The name of the AKS cluster"
}

variable "location" {
  type        = string
  description = "The Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the cluster"
}

variable "node_pool_name" {
  type        = string
  default     = "default"
  description = "Name of the default node pool"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Initial node count"
}

variable "vm_size" {
  type        = string
  default     = "standard_b2s_v2"
  description = "Size of the VMs in the node pool"
}

variable "auto_scaling_enabled" {
  type    = bool
  default = true
}

variable "min_count" {
  type    = number
  default = 1
}

variable "max_count" {
  type    = number
  default = 3
}

variable "network_plugin" {
  type    = string
  default = "azure"
}

variable "tags" {
  type    = map(string)
  default = {}
}
