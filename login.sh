#!/bin/bash

function f1() {
  echo "Network is not reachable!"
  # Define the username and password
  username="admin"
  password="admin"
  epochtime=($(date +%s%N) / 1000000)
  # Define the payload as a URL-encoded string
  payload="mode=191&username=$username&password=$password&producttype=0&a=$epochtime"

  # Make the API request using cURL with URL-encoded payload data
  curl --keepalive -X POST -d "$payload" http://192.168.100.1:8090/login.xml
}

# Get the initial network connection type
initial_connection_type=$(nmcli -t -f TYPE connection show --active)

# Monitor changes in the network connection type
nmcli monitor | while read -r line; do
  # Get the new network connection type
  new_connection_type=$(echo "$line" | awk '{print $2}')
  # Compare the new and old connection types
  if [[ "$initial_connection_type" != "$new_connection_type" ]]; then
    f1
    initial_connection_type="$new_connection_type"
  fi
done
