variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "network_name" {
  description = "The name of the network being created"
}

variable "firewall_name" {
  description = "Name of the Firewall rule"
}

variable "source_ranges" {
  description = "A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS"
}

variable "target_tags" {
  description = "A list of target tags for this firewall"
}

variable "protocol" {
  description = "The name of the protocol to allow. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number, or all"
}

variable "ports" {
  description = "List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP"
}