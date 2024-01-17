#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a value for the tag."
  exit 1
fi

# Assign the value of the tag
a="$1"

# Build the Docker image
#docker build -t "vimaldevops/panampunna-kerala:king-$a" .
##AWS
#docker build -t vjp-ecr-repository_name .
  docker build -t "056621886287.dkr.ecr.ap-south-1.amazonaws.com/vjp-ecr-repository_name:$1" . 
## login 
 aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 056621886287.dkr.ecr.ap-south-1.amazonaws.com

## PUSH 
  docker push "056621886287.dkr.ecr.ap-south-1.amazonaws.com/vjp-ecr-repository_name:$a"
