#!/bin/bash

function f1 {
  echo "Network connection type has changed."
  # Add your commands here to be executed whenever the network connection type changes
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