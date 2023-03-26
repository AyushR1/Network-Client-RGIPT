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

while true; do
  if ping -q -c 1 -W 0.5 google.com >/dev/null; then
    echo "Network is up"
  else
    f1
  fi
  sleep 1
done
