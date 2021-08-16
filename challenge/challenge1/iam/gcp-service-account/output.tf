output "service_account_email" {
  description = "The e-mail address of the service account"
  value       = "${google_service_account.service_account.email}"
}

output "service_account_name" {
  description = "The fully-qualified name of the service account"
  value       = "${google_service_account.service_account.name}"
}

output "service_account_unique_id" {
  description = "The unique id of the service account"
  value       = "${google_service_account.service_account.unique_id}"
}


