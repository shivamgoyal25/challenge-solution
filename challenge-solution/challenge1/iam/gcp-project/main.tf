resource "google_project" "project-in-a-folder" {
  count             = var.create_project ? 1:0
  name              = var.project_name
  project_id        = var.project_id
  folder_id         = var.folder_id
}
resource "google_project_service" "iam-api" {   
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id 
  service = "iam.googleapis.com"
}
resource "google_project_service" "compute-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id 
  service = "compute.googleapis.com"
}
resource "google_project_service" "stackdriver-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service = "stackdriver.googleapis.com"
}
resource "google_project_service" "monitoring-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "monitoring.googleapis.com"
}
resource "google_project_service" "logging-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "logging.googleapis.com"
}
resource "google_project_service" "cloudfunctions-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "cloudfunctions.googleapis.com"
}
resource "google_project_service" "pubsub-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "pubsub.googleapis.com"
}
resource "google_project_service" "storage-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "storage.googleapis.com"
}
resource "google_project_service" "storage-component-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "storage-component.googleapis.com"
}
resource "google_project_service" "service-networking-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "servicenetworking.googleapis.com"
}
resource "google_project_service" "cloudbuild-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "cloudbuild.googleapis.com"
}
resource "google_project_service" "container-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "container.googleapis.com"
}
resource "google_project_service" "container-registry-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "containerregistry.googleapis.com"
}
resource "google_project_service" "sql-component-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "sql-component.googleapis.com"
}
resource "google_project_service" "cloudresourcemanager-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "cloudresourcemanager.googleapis.com"
}
resource "google_project_service" "sqladmin-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "sqladmin.googleapis.com"
}

resource "google_project_service" "filestore-api" {
  project = var.create_project == true ? google_project.project-in-a-folder[0].project_id : var.project_id
  service =  "file.googleapis.com"
}