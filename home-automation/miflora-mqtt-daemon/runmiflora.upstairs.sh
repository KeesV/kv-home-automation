#!/bin/bash
docker run -d --net=host --volume /home/pi/kv-home-automation/miflora-mqtt-daemon/config.upstairs.ini:/miflora-mqtt-daemon/config.ini --name miflora --restart always kverhaar/miflora-mqtt-daemon
