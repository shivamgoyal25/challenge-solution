resource "google_service_account" "service_account" {
  account_id   = "${var.account_id}"
  display_name = "${var.display_name}"
  project      = "${var.project_id}"
}

resource "google_service_account_key" "sakey" {
  service_account_id = "${google_service_account.service_account.name}"
  public_key_type    = "${var.public_key_type}"
  private_key_type   = "${var.private_key_type}"
}

resource "google_project_iam_binding" "project" {
  project = "${var.project_id}"
  role    = "${var.role}"
  members = [
    "serviceAccount:${google_service_account.service_account.email}", 
    ]
}

resource "google_project_iam_binding" "compute-role" {
  project = "${var.project_id}"
  role    = "${var.compute_role}"
  members = [
    "serviceAccount:${google_service_account.service_account.email}",
  ]
}

resource "google_project_iam_binding" "network-role" {
  project = "${var.project_id}"
  role    = "${var.network_role}"
  members = [
    "serviceAccount:${google_service_account.service_account.email}",
  ]
}