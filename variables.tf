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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_integration_runtime_azure's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^([a-zA-Z0-9](-|-?[a-zA-Z0-9]+)+[a-zA-Z0-9])$", value))
  #   message:   Invalid name for Azure Integration Runtime: minimum 3 characters, must start and end with a number or a letter, may only consist of letters, numbers and dashes and no consecutive dashes.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: location
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: compute_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: core_count
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
}

