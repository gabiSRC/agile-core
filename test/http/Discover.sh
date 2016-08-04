#!/bin/sh

#Start discovery
echo "Device discovery started"
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' 'http://localhost:8080/api/protocols/discovery'
#sleep for 10 seconds
sleep 5s
#stop discovery
echo "Device discovery stopped"
curl -X DELETE --header 'Accept: application/json' 'http://localhost:8080/api/protocols/discovery'
#sleep 1s
#Print discovered devices
echo "Discovered devices"
curl -X GET --header 'Accept: application/json' 'http://localhost:8080/api/protocols/devices' | jq '.[] | {id: .id, name: .name, protocol: .protocol, status: .status }'
