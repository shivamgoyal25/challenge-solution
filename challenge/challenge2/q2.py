from ec2_metadata import ec2_metadata
ec2_metadata_dict={}
ec2_metadata_dict["ami_id"]=ec2_metadata.ami_id
ec2_metadata_dict["ami_launch_index"]=ec2_metadata.ami_launch_index
ec2_metadata_dict["ami_manifest_path"]=ec2_metadata.ami_manifest_path
ec2_metadata_dict["instance_action"]=ec2_metadata.instance_action
ec2_metadata_dict["instance_id"]=ec2_metadata.instance_id
ec2_metadata_dict["instance_type"]=ec2_metadata.instance_type
ec2_metadata_dict["public_hostname"]=ec2_metadata.public_hostname
ec2_metadata_dict["public_ipv4"]=ec2_metadata.public_ipv4
ec2_metadata_dict["security_groups"]=ec2_metadata.security_groups
print(ec2_metadata_dict)