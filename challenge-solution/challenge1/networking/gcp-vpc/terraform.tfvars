create_vpc              = true
project_id              = "challenge1-project"
public_region           = ["us-east1", "us-east2"]
network_name            = "challenge1-vpc"
public_subnet_name      = "public-subnet"
public_subnet_range     = ["10.1.0.0/24", "10.2.0.0/24"]
routing_mode            = "REGIONAL"
router_name             = "vpc-router"
router_region1          = "us-east1"
nat_gw_name             = "vpc-nat-gw"