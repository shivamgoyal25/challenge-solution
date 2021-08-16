output "project_name" {
  value       = google_project.project-in-a-folder.*.name
  description = "The name of the Project being created"
}
