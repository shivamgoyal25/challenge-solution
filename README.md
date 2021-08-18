# challenge-solution
Challenge question solutions
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

We use GCP API call to get instance metadata in json format
We need to provide GCP project, Zone and Instance name. We can either use project = input("Enter project Name: ") to get input from User or Use Config module.
To get specific metadata we provide the key in pprint(response['key'])
Ex: pprint(response['serviceAccounts']) or pprint(response['networkInterfaces'][0]['subnetwork'])

Use 
pip install google-api-python-client
pip install config
pip install oauth2client 
to install these modules if necessary.

Challenge3

myfunc is a function with a,b as arguments
json.loads method from Json package is used to convert Json to python dict 
split method is used to split the string into a list, using '/' as separator
