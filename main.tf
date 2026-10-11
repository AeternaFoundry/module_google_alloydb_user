resource "google_alloydb_user" "alloydb_users" {
  for_each = var.alloydb_users

  cluster             = each.value.cluster
  user_id             = each.value.user_id
  user_type           = each.value.user_type
  database_roles      = each.value.database_roles
  deletion_policy     = each.value.deletion_policy
  password            = each.value.password
  password_wo         = each.value.password_wo
  password_wo_version = each.value.password_wo_version

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

