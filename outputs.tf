output "synapse_integration_runtime_azures_id" {
  description = "Map of id values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_integration_runtime_azures_compute_type" {
  description = "Map of compute_type values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.compute_type if v.compute_type != null && length(v.compute_type) > 0 }
}
output "synapse_integration_runtime_azures_core_count" {
  description = "Map of core_count values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.core_count if v.core_count != null }
}
output "synapse_integration_runtime_azures_description" {
  description = "Map of description values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.description if v.description != null && length(v.description) > 0 }
}
output "synapse_integration_runtime_azures_location" {
  description = "Map of location values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.location if v.location != null && length(v.location) > 0 }
}
output "synapse_integration_runtime_azures_name" {
  description = "Map of name values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_integration_runtime_azures_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}
output "synapse_integration_runtime_azures_time_to_live_min" {
  description = "Map of time_to_live_min values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = { for k, v in azurerm_synapse_integration_runtime_azure.synapse_integration_runtime_azures : k => v.time_to_live_min if v.time_to_live_min != null }
}

