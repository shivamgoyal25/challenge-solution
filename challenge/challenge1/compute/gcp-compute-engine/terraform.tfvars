number_of_vms               = 2
project_id                  = "challenge1-project"
region                      = "us-east1"
instance_name               = "challenge1-project"
machine_type                = "n1-standard-4"
zone                        = "us-east1-b"
network                     = "challenge1-vpc"
subnetwork                  = "public-subnet"
boot_disk_size              = "50"
image                       = "debian-cloud/debian-9"  
service_account             = "challenge1-project@challenge1-project.iam.gserviceaccount.com"
tags                        = ["allow-http", "allow-https"]
on_host_maintenance_policy  = "MIGRATE"
label1_value                = "dev"
disk_names                  = "additional-disk"
disk_description            = "Additional Disk"
disk_sizes                  = "100"
disk_type                   = "pd-standard"
disk_zones                  = "us-east1-b"
disk_label1_value           = "dev"