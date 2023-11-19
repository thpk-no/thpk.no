#!/bin/bash

# Get the IP address
IPADDRESS=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)

# Print the IP address
echo $IPADDRESS

# Start the Hugo server
hugo server --bind $IPADDRESS --baseURL=http://$IPADDRESS

