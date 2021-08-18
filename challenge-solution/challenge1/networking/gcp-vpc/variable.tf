variable "create_vpc"{
  description = "Create VPC, true of false"
  default     = true
}

variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "public_region"{
  description ="The name of the region where VPC is being created"
}

variable "network_name" {
  description = "The name of the network being created"
}

variable "routing_mode" {
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}

variable "public_subnet_name"{
  description = "The name of the Public subnetwork being created"
}

variable "public_subnet_range"{
  description = "The sPubic subnetwork range being created"
}


##Router variables####

variable "router_name" {
  description = "Name of the resource. the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?"
}

variable "router_region" {
  description = "Region where the router resides"
  default     = ""
}

########NAT GW varaibles##############

variable "nat_gw_name" {
  description = "A unique name for Cloud NAT, required by GCE"
}

variable "nat_ip_allocate_option" {
  description = "How external IPs should be allocated for this NAT. Valid values are AUTO_ONLY or MANUAL_ONLY"
  default     = "AUTO_ONLY"
}

