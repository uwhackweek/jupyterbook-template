# converts yaml configuration file to json file
# usage: python <yaml_input_filename> <json_output_filename>
# called by deploy_website.sh script

import yaml
import json
import sys

yaml_file = sys.argv[1]
json_file = sys.argv[2]

with open(yaml_file, 'r') as yaml_in, open(json_file, "w") as json_out:
    yaml_object = yaml.safe_load(yaml_in) 
    json.dump(yaml_object, json_out)