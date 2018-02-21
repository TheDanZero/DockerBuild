#!/bin/bash

cd DockerBuild
docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID 192.168.178.222:5000/alfred-registry/$JOB_NAME:$BUILD_ID
docker push 192.168.178.222:5000/alfred-registry/$JOB_NAME:$BUILD_ID
