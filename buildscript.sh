#!/bin/bash

cd DockerBuild

docker build -t $DOCKER_REG_URL$JOB_NAME:$BUILD_ID .


docker push $DOCKER_REG_URL$JOB_NAME:$BUILD_ID
