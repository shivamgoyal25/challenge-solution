variable "create_project" {
    description = "Create project true or false"
    default     = true
}
variable "project_name" {
  description = "The Project display name. A project’s display name must be unique amongst its siblings"
}

variable "project_id" {
  description = "The project ID. Changing this forces a new project to be created."
}

variable "folder_id" {
  description = "The numeric ID of the folder this project should be created under"
  default = ""
}

