#!/bin/bash


function f1() {
  echo "Network is not reachable!"
  # Define the username and password
  username="admin"
  password="admin"
  epochtime=($(date +%s%N) / 1000000)
  # Define the payload as a URL-encoded string
  payload="mode=191&username=$username&password=$password&a=$epochtime&producttype=0"

  # Make the API request using cURL with URL-encoded payload data
  curl --keepalive -X POST -d "$payload" http://172.16.16.16:8090/httpclient.html 
}
f1
while true; do
  if ! ping -q -c 1 -W 1 google.com >/dev/null; then
    f1
  fi
  sleep 1
done
