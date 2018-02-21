#!/bin/bash

cd DockerBuild

docker build -t $DOCKER_REGISTRY_URL$JOB_NAME:$BUILD_ID .


docker push $DOCKER_REGISTRY_URL$JOB_NAME:$BUILD_ID
