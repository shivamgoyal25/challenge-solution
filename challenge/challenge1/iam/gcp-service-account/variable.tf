variable "account_id" {
  description = "The account id that is used to generate the service account email address and a stable unique id. It is unique within a project"
}

variable "display_name" {
  description = "The display name for the service account"
  default     = ""
}

variable "project_id" {
  description = "The ID of the project that the service account will be created in"
  default     = ""
}

variable "public_key_type" {
  description = "The output format of the public key requested"
  default     = "TYPE_X509_PEM_FILE"
}

variable "private_key_type" {
  description = "The output format of the private key"
  default     = "TYPE_GOOGLE_CREDENTIALS_FILE"
}

variable "role" {
  description = "The role that to be applied to Service account."
}

variable "compute_role" {
  description = "The role that to be applied to Service account."
}

variable "network_role" {
  description = "The role that to be applied to Service account."
}