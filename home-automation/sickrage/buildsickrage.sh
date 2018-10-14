#!/bin/bash
if [ ! -d sickrage ]; then
    git clone git://github.com/SickRage/SickRage.git sickrage
else
    cd sickrage
    git pull
    cd ..
fi
docker build -t kverhaar/sickrage:arm64 -t kverhaar/sickrage:latest .
