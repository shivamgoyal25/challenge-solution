variable "number_of_vms"{
  description = "No of VMs to be created"
}

variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used"
  default     = ""
}

variable "instance_name" {
  description = "A unique name for the resource, required by GCE"
}

variable "machine_type" {
  description = "The machine type to create"
}

variable "region" {
  description = "The zone that the machine should be created in"
}

variable "zone" {
  description = "The zone that the machine should be created in"
}

variable "network" {
  description = "The name or self_link of the network to attach this interface to. Either network or subnetwork must be provided"
  default     = ""
}

variable "subnetwork" {
  description = "The name or self_link of the subnetwork to attach this interface to. The subnetwork must exist in the same region this instance will be created in"
  default     = ""
}

variable "auto_delete" {
  description = "Whether the disk will be auto-deleted when the instance is deleted"
  default     = false
}

variable "device_name" {
  description = "Name with which attached disk will be accessible. On the instance, this device will be /dev/disk/by-id/google-{{device_name}}"
  default     = ""
}

variable "boot_disk_size" {
  description = "The size of the image in gigabytes. If not specified, it will inherit the size of its base image"
  default     = ""
}

variable "boot_disk_type" {
  description = "The GCE disk type. May be set to pd-standard or pd-ssd"
  default     = "pd-standard"
}

variable "image" {
  description = "The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}."
  default     = ""
}

variable "can_ip_forward" {
  description = "Whether to allow sending and receiving of packets with non-matching source or destination IPs"
  default     = false
}

variable "deletion_protection" {
  description = "Enable deletion protection on this instance"
  default     = false
}

variable "description" {
  description = "A brief description of this resource"
  default     = ""
}

variable "hostname" {
  description = "A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid"
  default     = ""
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the instance"
  default     = {}
}


variable "service_account" {
  description = "Service account to attach to the instance. Refer below for supported values"
}

variable "tags" {
  description = "A list of tags to attach to the instance for firewall rules"
}

variable "on_host_maintenance_policy" {
    description = "Maintenance Policy"
}

variable "label1_value" {
    description = "Instance Lables"
}

variable "disk_names" {
  description = "Name of the resource"
}

variable "disk_description" {
  description = "An optional description of this resource. Provide this property when you create the resource"
  default     = ""
}

variable "disk_sizes" {
  description = "Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk"
}

variable "disk_type" {
  description = "URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk"
  default     = "pd-standard"
}

variable "disk_zones" {
  description = "A reference to the zone where the disk resides"
}

variable "disk_label1_value"{
    description = "Disk Labels"
}