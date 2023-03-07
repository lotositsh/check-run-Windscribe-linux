#!/bin/bash

# Check if Windscribe VPN is running
if [ "$(windscribe status | grep 'CONNECTED' | wc -l)" -eq 1 ]; then
    echo "Windscribe VPN is already running"
else
# Start Windscribe VPN
    windscribe connect
fi