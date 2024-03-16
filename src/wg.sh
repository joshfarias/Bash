#!/bin/bash

INTERFACE="wg0"

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 {start|stop}"
    exit 1
fi

case "$1" in
    start)
        echo "Starting WireGuard interface: $INTERFACE"
        wg-quick up $INTERFACE
        ;;
    stop)
        echo "Stopping WireGuard interface: $INTERFACE"
        wg-quick down $INTERFACE
        ;;
    *)
        echo "Invalid option: $1"
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac
