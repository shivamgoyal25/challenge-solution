/*************Firewall configuration***************/


resource "google_compute_firewall" "fw-rule" {
  name        = var.firewall_name
  network     = var.network_name
  description = "Creates Firewall rule targetting tagged instances"
  project     = var.project_id

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  target_tags   = var.target_tags
  source_ranges = var.source_ranges
}
