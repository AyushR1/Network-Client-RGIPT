#!/bin/bash

function f1() {
  echo "Network is not reachable!"
  # do something here, like restart the network or notify someone
}

while true; do
  if ping -q -c 1 google.com >/dev/null; then
    echo "Network is up"
  else
    f1
  fi
  sleep 1
done