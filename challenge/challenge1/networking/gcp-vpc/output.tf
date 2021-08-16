output "network_name" {
  value       = google_compute_network.network.*.name
  description = "The name of the VPC being created"
}

output "public_subnet_name" {
  value       = google_compute_subnetwork.public-subnet.*.name
  description = "The names of the subnets being created"
}


output "router_name" {
  description = "Name of the router"
  value       = google_compute_router.nat-router.*.name
}

output "nat_gw_name" {
  description = "Name of the nat gateway"
  value       = google_compute_router_nat.simple-nat.*.name
}
