variable "alloydb_users" {
  description = <<EOT
Map of alloydb_users, attributes below
Required:
    - cluster
    - user_id
    - user_type
Optional:
    - database_roles
    - deletion_policy
    - password
    - password_wo
    - password_wo_version
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster             = string
    user_id             = string
    user_type           = string
    database_roles      = optional(list(string))
    deletion_policy     = optional(string)
    password            = optional(string)
    password_wo         = optional(string)
    password_wo_version = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

