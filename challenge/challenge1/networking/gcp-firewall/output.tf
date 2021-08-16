output "firewall_name" {
  value       = google_compute_firewall.fw-rule.name
  description = "The URI of the created resource"
}
