output "alloydb_users_id" {
  description = "Map of id values across all alloydb_users, keyed the same as var.alloydb_users except keys with no id are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alloydb_users_cluster" {
  description = "Map of cluster values across all alloydb_users, keyed the same as var.alloydb_users except keys with no cluster are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "alloydb_users_database_roles" {
  description = "Map of database_roles values across all alloydb_users, keyed the same as var.alloydb_users except keys with no database_roles are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.database_roles if v.database_roles != null && length(v.database_roles) > 0 }
}
output "alloydb_users_deletion_policy" {
  description = "Map of deletion_policy values across all alloydb_users, keyed the same as var.alloydb_users except keys with no deletion_policy are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "alloydb_users_name" {
  description = "Map of name values across all alloydb_users, keyed the same as var.alloydb_users except keys with no name are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alloydb_users_password" {
  description = "Map of password values across all alloydb_users, keyed the same as var.alloydb_users except keys with no password are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "alloydb_users_password_wo_version" {
  description = "Map of password_wo_version values across all alloydb_users, keyed the same as var.alloydb_users except keys with no password_wo_version are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.password_wo_version if v.password_wo_version != null && length(v.password_wo_version) > 0 }
}
output "alloydb_users_user_id" {
  description = "Map of user_id values across all alloydb_users, keyed the same as var.alloydb_users except keys with no user_id are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "alloydb_users_user_type" {
  description = "Map of user_type values across all alloydb_users, keyed the same as var.alloydb_users except keys with no user_type are omitted"
  value       = { for k, v in google_alloydb_user.alloydb_users : k => v.user_type if v.user_type != null && length(v.user_type) > 0 }
}

