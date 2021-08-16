Challenge1

For 3 tier environment, we first create GCP project and Service account. 
VPC is created with public subnets, NAT gateway(for Internet connectivity)
Firewall with ports and ranges
Compute VMs in public subnets without Public IP for security purposes
CloudSQL with Private IP and Service networking connection 
User has to update terraform.tfvars file to provide input parameters.

We can also follow Module approach in Terraform to deploy all terraform resources at once.
Use below block in main.tf to store terraform tfstate files in gcs bucket
terraform {​​​​
  backend "gcs" {​​​​
    prefix  = "Bucket path"
  }​​​​
}​​​​

Challenge2

Use pip install ec2-metadata to query the EC2 metadata API
ec2_metadata_dict is an empty dict

To query particular metadata key use:
curl http://169.254.169.254/latest/metadata/* where * is below mentioned parameter to query particular metadata key.
ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
events/
hostname
iam/
instance-action
instance-id
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-hostname
public-ipv4
public-keys/
reservation-id
security-groups
services/ 

Challenge3

myfunc is a function with a,b as arguments
json.loads method from Json package is used to convert Json to python dict 
split method is used to split the string into a list, using '/' as separator