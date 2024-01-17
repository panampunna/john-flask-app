#!/bin/bash

# Registry URL
registry=""

# Credentials
username="vimaldevops"
password="dckr_pat_4qYftwNeTXtqjG-qBtyOZ-XXXXX"

# Perform Docker login
echo "$password" | docker login --username "$username" --password-stdin "$registry"

