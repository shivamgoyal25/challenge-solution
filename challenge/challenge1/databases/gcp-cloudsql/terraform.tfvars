project_id          = "challenge1-project"
sqlinstance_name    = "sqlinstance-challenge1"
database_version    = "MYSQL_5_7"
sql_region          = "us-east1"
zone                = "us-east1-b"
db_tier             = "db-n1-standard-1"
password            = "data123"
username            = "test-user"
database_name       = "test-sql-db"
network_name        = "challenge1-vpc"
global_address      = "vpc-private-ip-block"

#optional arguments, the following values are used 
#uncomment to specify a different value
#activation_policy = "ALWAYS"
#authorized_gae_applications  = []
#disk_autoresize = true
#disk_size  = 20
#disk_type  = "PD_SSD"
#pricing_plan = "PER_USE"
#maintenance_window_day  = 1
#maintenance_window_hour = 23
#maintenance_window_update_track  = "canary"
#database_flags = []
#user_labels = {}
#backup_configuration = {}
#binary_log_enabled = true
#enabled  = true
#start_time = ""
#ip_configuration = [{}]
#certificate_name = "client"
#sql_public_ip = false
#ip_version = "IPV4"
#address_type = "INTERNAL"
#address_purpose = "VPC_PEERING"
#ip_length = 20