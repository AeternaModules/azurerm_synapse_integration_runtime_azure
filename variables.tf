variable "synapse_integration_runtime_azures" {
  description = <<EOT
Map of synapse_integration_runtime_azures, attributes below
Required:
    - location
    - name
    - synapse_workspace_id
Optional:
    - compute_type
    - core_count
    - description
    - time_to_live_min
EOT

  type = map(object({
    location             = string
    name                 = string
    synapse_workspace_id = string
    compute_type         = optional(string)
    core_count           = optional(number)
    description          = optional(string)
    time_to_live_min     = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_integration_runtime_azures : (
        can(regex("^([a-zA-Z0-9](-|-?[a-zA-Z0-9]+)+[a-zA-Z0-9])$", v.name))
      )
    ])
    error_message = "Invalid name for Azure Integration Runtime: minimum 3 characters, must start and end with a number or a letter, may only consist of letters, numbers and dashes and no consecutive dashes."
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_integration_runtime_azures : (
        v.core_count == null || (contains([8, 16, 32, 48, 80, 144, 272], v.core_count))
      )
    ])
    error_message = "must be one of: 8, 16, 32, 48, 80, 144, 272"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_integration_runtime_azures : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

