from pprint import pprint
from googleapiclient import discovery
from oauth2client.client import GoogleCredentials
import config

credentials = GoogleCredentials.get_application_default()
service = discovery.build('compute', 'v1', credentials=credentials)
project = config.Project_Name  # Project ID for this request.
zone = config.Zone # The name of the zone for this request.
instance = config.Instance_Name # Name of the instance resource to return.
request = service.instances().get(project=project, zone=zone, instance=instance)
response = request.execute()
pprint(response)
#To print subnetwork metadata
pprint(response['networkInterfaces'][0]['subnetwork'])
#To print service account metadata
pprint(response['serviceAccounts'])
