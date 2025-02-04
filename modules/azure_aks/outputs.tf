output "resource_group_name" {
  description = "Name of the resource group used by AKS."
  value       = azurerm_resource_group.aks_rg.name
}

output "aks_cluster_name" {
  description = "Name of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

output "kube_config" {
  description = "Kube config for the cluster."
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  sensitive   = true
}
