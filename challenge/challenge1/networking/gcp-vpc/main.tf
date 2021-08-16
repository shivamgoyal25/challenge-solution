provider "google" {
 project     = var.project_id
}

/*************VPC configuration*******************/

resource "google_compute_network" "network" {
  count                   = var.create_vpc ? 1:0
  name                    = var.network_name
  auto_create_subnetworks = "false"
  routing_mode            = var.routing_mode
  project                 = var.project_id
}

/*************Subnet configuration***************/

resource "google_compute_subnetwork" "public-subnet" {
  count                    = var.create_vpc == true ? length(var.public_subnet_range) : 0
  name                     = "${var.public_subnet_name}${format("%01d", count.index + 1)}"
  ip_cidr_range            = var.public_subnet_range[count.index]
  region                   = var.public_region[count.index]
  network                  = google_compute_network.network[0].name
  project                  = var.project_id
}

#######Router###############################

resource "google_compute_router" "nat-router" {
  count                             = length(var.public_subnet_range)
  name                              = "${var.router_name}${format("%01d", count.index + 1)}"
  region                            = var.public_region[count.index]
  network                           = google_compute_network.network[0].id
  project                           = var.project_id
}

#######Cloud NAT###############################

resource "google_compute_router_nat" "simple-nat" {
  count                              = length(var.public_subnet_range)
  name                               = "${var.nat_gw_name}${format("%01d", count.index + 1)}"
  router                             = google_compute_router.nat-router[count.index].name
  region                             = var.public_region[count.index]
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  project                            = var.project_id
}
