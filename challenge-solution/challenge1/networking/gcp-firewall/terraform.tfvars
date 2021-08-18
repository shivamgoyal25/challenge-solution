project_id              = "challenge1-project"
network_name            = "challenge1-vpc"
firewall_name           = "firewall-rule"
protocol                = "tcp"
ports                   = ["22", "80"]
target_tags             = ["allow-tcp-ports"]
source_ranges           = ["0.0.0.0/0"]