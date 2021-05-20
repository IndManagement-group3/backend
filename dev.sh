#!/usr/bin/env bash
killall mosquitto
sleep 1
mosquitto -d -c broker/mosquitto.conf

cd ./webserver/
. venv/bin/activate
./dev.sh
