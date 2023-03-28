#!/bin/bash
#check if Windscribe is running
if ps -C "windscribe" > /dev/null; then
    # Windscribe is running, check if it's connected
    if windscribe status | grep -w "CONNECTED"; then 
        echo "Windscribe is already connected."
    elif windscribe status | grep -w "DISCONNECTED"; then 
        echo "Windscribe is DISCONNECTED"; windscribe connect
    fi 
else
    # Windscribe is not running, start it and connect
    echo "Windscribe is not running. Starting and connecting..."
    windscribe start && windscribe connect
fi
