output "synapse_integration_runtime_azures" {
  description = "All synapse_integration_runtime_azure resources"
  value       = azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures
}
output "synapse_integration_runtime_azures_compute_type" {
  description = "List of compute_type values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.compute_type]
}
output "synapse_integration_runtime_azures_core_count" {
  description = "List of core_count values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.core_count]
}
output "synapse_integration_runtime_azures_description" {
  description = "List of description values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.description]
}
output "synapse_integration_runtime_azures_location" {
  description = "List of location values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.location]
}
output "synapse_integration_runtime_azures_name" {
  description = "List of name values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.name]
}
output "synapse_integration_runtime_azures_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.synapse_workspace_id]
}
output "synapse_integration_runtime_azures_time_to_live_min" {
  description = "List of time_to_live_min values across all synapse_integration_runtime_azures"
  value       = [for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : v.time_to_live_min]
}

