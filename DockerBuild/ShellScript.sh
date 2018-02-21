#!/bin/bash


docker build -t $JOB_NAME:$BUILD_ID .
STR="192.168.178.222:5000/alfred-registry/"
docker tag $JOB_NAME:$BUILD_ID 192.168.178.222:5000/alfred-registry/$JOB_NAME:$BUILD_ID
docker push $STR/$JOB_NAME:$BUILD_ID
