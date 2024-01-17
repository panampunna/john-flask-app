#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a value for the tag."
  exit 1
fi

# Assign the value of the tag
a="$1"

# Run the first script
echo "Running index.sh..."
./index.sh "$a"

sleep 10

# Run the second script
echo "Running create_docker_image.sh..."
./create_docker_image.sh "$a"

sleep 60
# Run the third script
echo "Running hub-docker-login.sh..."
./hub-docker-login.sh

sleep 20 
# Push the Docker image
echo "Pushing the Docker image..."
docker push "vimaldevops/panampunna-kerala:king-$a"


