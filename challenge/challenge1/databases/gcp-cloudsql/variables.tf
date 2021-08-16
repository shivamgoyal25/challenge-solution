variable "project_id" {
  description = "The project ID to manage the Cloud SQL resources"
}
variable "sqlinstance_name" {
  description = "The name of the Cloud SQL resources"
}
// required
variable "database_version" {
  description = "The database version to use"
}
// required
variable "sql_region" {
  description = "The region of the Cloud SQL resources"
}
// Master
variable "db_tier" {
  description = "The tier for the master instance"
}
variable "zone" {
  description = "The zone for the master instance, like us-central1-a"
  #default = "us-central1-a"
}
variable "activation_policy" {
  description = "The activation policy for the master instance. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`"
  default     = "ALWAYS"
}
variable "authorized_gae_applications" {
  description = "The list of authorized App Engine project names"
  default     = []
}
variable "disk_autoresize" {
  description = "Configuration to increase storage size"
  default     = true
}
variable "disk_size" {
  description = "The disk size for the master instance"
  default     = 20
}
variable "disk_type" {
  description = "The disk type for the master instance"
  default     = "PD_SSD"
}
variable "pricing_plan" {
  description = "The pricing plan for the master instance"
  default     = "PER_USE"
}
variable "maintenance_window_day" {
  description = "The day of week (1-7) for the master instance maintenance"
  default     = 1
}
variable "maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the master instance maintenance"
  default     = 23
}
variable "maintenance_window_update_track" {
  description = "The update track of maintenance window for the master instance maintenance. Can be either `canary` or `stable`."
  default     = "canary"
}
variable "database_flags" {
  description = "The database flags for the master instance. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  default     = []
}
variable "user_labels" {
  default     = {}
  description = "The key/value labels for the master instances."
}
variable "backup_configuration" {
  default     = {}
  description = "The backup configuration block of the Cloud SQL resources. binary_log_enabled & enabled is mandetory for replication and failover"
}
variable "binary_log_enabled" {
  default     = true
  description = "True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Cannot be used with Postgres"
}
variable "enabled" {
  default     = true
  description = "true if backup configuration is enabled"
}
variable "start_time" {
  default     = ""
  description = "HH:MM format time indicating when backup configuration starts"
}
variable "ip_configuration" {
  description = "The ip_configuration settings subblock"
  default     = [{}]
}
variable "password" {
  description = "password for DB User"
}
variable "username" {
  description = "User name for the database connection"
}
variable "database_name" {
  description = "The name of the database"
}
variable "certificate_name" {
  description = "The name of the SSL certificate"
  default = "client"
}
variable "sql_public_ip" {
  description = "Does SQL instance need public IP"
  type    = bool
  default = false
}
variable "global_address" {
  description = "Private Global address block name"
  default =  "vpc-private-ip-block-1"
}
variable "network_name" {
  description = "The name of the network being created"
  default = "default"
}
variable "ip_version" {
  description = "The type of IP required"
  default = "IPV4"
}
variable "address_type" {
  description = "The type of address"
  default = "INTERNAL"
}
variable "address_purpose" {
  description = "The purpose of address"
  default = "VPC_PEERING"
}
variable "ip_length" {
  description = "The length of IP address"
  default = 20
}
variable "vpc_connection_service" {
  description = "The service of VPC connection"
  default = "servicenetworking.googleapis.com"
}