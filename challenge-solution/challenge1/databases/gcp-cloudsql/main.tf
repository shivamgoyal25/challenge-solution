
resource "google_sql_database_instance" "sqlinstance" {
  project          = var.project_id
  name             = var.sqlinstance_name
  database_version = var.database_version
  region           = var.sql_region
  depends_on       = [google_service_networking_connection.private_vpc_connection]
  settings {
   tier                        = var.db_tier
   activation_policy           = var.activation_policy
   
    ip_configuration {
      ipv4_enabled    =  var.sql_public_ip
      private_network =  "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/${var.network_name}"
    }
   backup_configuration {
      binary_log_enabled = var.binary_log_enabled
      enabled = var.enabled
      start_time  = var.start_time
   }
    disk_autoresize = var.disk_autoresize
    disk_size       = var.disk_size
    disk_type       = var.disk_type
    pricing_plan    = var.pricing_plan
    user_labels     = var.user_labels
    location_preference {
      zone = var.zone
    }
    maintenance_window {
      day          = var.maintenance_window_day
      hour         = var.maintenance_window_hour
      update_track = var.maintenance_window_update_track
    }
  }
}
resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.sqlinstance.name
}
resource "google_sql_user" "users" {
  name          = var.username
  instance      = google_sql_database_instance.sqlinstance.name
  password      = var.password
}
resource "google_sql_ssl_cert" "client_cert" {
  common_name = var.certificate_name
  depends_on = [google_sql_database_instance.sqlinstance]
  instance    = var.sqlinstance_name
}
resource "google_compute_global_address" "private_ip_block" {
  name         = var.global_address
  purpose      = var.address_purpose
  address_type = var.address_type
  ip_version   = var.ip_version
  prefix_length = var.ip_length
  network       = var.network_name
}
resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = var.network_name
  service                 = var.vpc_connection_service
  reserved_peering_ranges = [google_compute_global_address.private_ip_block.name]
}