#!/usr/bin/env python

import boto3
import json

ec2 = boto3.client('ec2', region_name='your_aws_region')

instances = ec2.describe_instances(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])

inventory = {
    "_meta": {
        "hostvars": {}
    },
    "new_instances": {
        "hosts": []
    }
}

for reservation in instances['Reservations']:
    for instance in reservation['Instances']:
        inventory["new_instances"]["hosts"].append(instance['PublicIpAddress'])

print(json.dumps(inventory))